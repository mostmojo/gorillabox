class SubscriptionsController < ApplicationController
  before_action :set_subscription, only: %i[show update edit destroy]
  def index
    @subscriptions = Subscription.all
    @user = current_user
  end

  def show
  end

  def new
    @subscription = Subscription.new
    @box = Box.find(params[:box_id])
  end

  def create
    @subscription = Subscription.new(subscription_params)
    @box = Box.find(params[:box_id])
    @subscription.box = @box
    # Associate the user to the subscription. Devise provides this current_user
    @subscription.user = current_user
    if @subscription.save
      redirect_to subscriptions_path
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @subscription.destroy
    respond_to do |format|
      format.html { redirect_to subscriptions_path, notice: 'Your subscription was successfully cancelled' }
    end
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

  private

  def subscription_params
    params.require(:subscription).permit(:duration, :delivery_date)
  end

  def set_subscription
    @subscription = Subscription.find(params[:id])
  end
end
