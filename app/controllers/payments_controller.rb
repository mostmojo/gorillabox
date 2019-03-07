class PaymentsController < ApplicationController
  before_action :set_subscription, only: [:create, :new]

  def new
  end

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email: params[:stripeEmail]
    )


  charge = Stripe::Charge.create(
  customer:     customer.id, # You should store this customer id and re-use it.
  amount:       @subscription.amount_cents,
  description:  "Payment for Box #{@subscription.box_sku} for subscription #{@subscription.id}",
  currency:     @subscription.amount.currency
  )
    
    @subscription.update(payment: charge.to_json, state: 'paid')
    current_user.has_subscription = true
    redirect_to subscription_path(@subscription)
  rescue Stripe::CardError => e
    flash[:alert] = e.message
    redirect_to new_subscription_payment_path(@subscription)
  end

  private

  def set_subscription
    @subscription = Subscription.find(params[:subscription_id])
  end
end
