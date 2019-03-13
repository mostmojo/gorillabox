class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: %i[update edit destroy]

  def index
    @subscriptions = Subscription.all
    @user = current_user
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  def new
    @box = Box.find(params[:box_id])
    @subscription = Subscription.new
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @box = Box.find(params[:box_id])
    @subscription.box =  Box.find(params[:box_id])
    @subscription.user = current_user
    @subscription.state = "pending"
    @subscription.amount = @subscription.quantity * @subscription.box.price unless @subscription.quantity.nil?
    if @subscription.save
      redirect_to subscription_path(@subscription)
    else
      render :new
    end
  end

  def edit
    @box = Box.find(params[:box_id])
    @subscription = Subscription.find(params[:id])
  end

  def update
    respond_to do |format|
      if @subscription.update(subscription_params)
        format.html { redirect_to subscriptions_path, notice: 'Your subscription was successfully updated' }
      else
        format.html { render :edit }
        format.json { render json: @subscription.errors, status: unprocessable_entity }
      end
    end
  end

  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_path, notice: 'Your subscription was successfully cancelled' }
    end
  end

  def export_notes
    @box = Box.find(params[:box_id])
    @subscription = Subscription.find(params[:sub_id])
  # Export PDF
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: 'notes',
          template: 'subscriptions/notes/notes_pdf.html',
          dpi: '1000',
          :show_as_html => params[:debug].present?,
          :print_media_type => false,
          :no_background => false
        return
      end
    end
  end


  private

  def subscription_params
    params.require(:subscription).permit(:duration, :quantity, :delivery_address, :sub_id, :box_id)
  end

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end
end
