class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: %i[update edit destroy]

  def index
    @subscriptions = Subscription.all
    @user = current_user
  end

  def show
    @subscription = current_user.subscriptions.where(state: 'paid').find(params[:id])
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
    @subscription.amount = @subscription.quantity * @subscription.box.price
    if @subscription.save
      redirect_to new_subscription_payment_path(@subscription)
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

  private

  def subscription_params
    params.require(:subscription).permit(:duration, :quantity, :delivery_address)
  end

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end
end
