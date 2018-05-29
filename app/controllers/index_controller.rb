class IndexController < ApplicationController
	before_action :authenticate_user!, only: [:cart]
  def index

    @items = Item.all

  end
  
  def cart
  end

  def add_to_cart
    if current_user.cart == nil
      current_user.create_cart
    end
    item = Item.find(params[:id])
    current_user.cart.items << item
    p current_user.cart.items
  end 

end
