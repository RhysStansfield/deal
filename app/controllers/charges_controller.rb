class ChargesController < ApplicationController

  def new
    @offer = Offer.find params[:offer_id]
  end

  def create
    @offer = Offer.find params[:offer_id]

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @offer.price.to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'GBP'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end

end
