class CartsController < ApplicationController
  def show

    item = current_user.cart.items.all
    # Récupérer ts les items dans le panier du current user
  end

  def add_item_to_order
    ord = Order.new
    ord.user = current_user
    ord.save
    com = Command.new
    com.user = current_user

    current_user.cart.items.each do | item |
      com.items << item
    end
    com.save
    current_user.cart.items.clear

    redirect_to root_path
  end

end
