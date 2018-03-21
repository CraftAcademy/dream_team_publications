class SubscriptionsController < ApplicationController
  def new
  end

  def create
    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: 10000,
      description: 'DreamTeam Publications Monthly Subscription',
      currency: 'sek'
    )

    if charge.paid?
      current_user.subscriber = true
      current_user.save
      redirect_to root_path, notice: 'You are now subscribed!'
    end
  end
end
