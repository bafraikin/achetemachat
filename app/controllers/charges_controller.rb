class ChargesController < ApplicationController
def new

	item = current_user.cart.items.all

end



def create
  # Amount in cents
  @amount = 500
  puts "coucou"

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Rails Stripe customer',
    :currency    => 'eur'
  )



rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end


end