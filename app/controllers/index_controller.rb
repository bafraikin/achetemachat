class IndexController < ApplicationController
	
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
    puts '__________________'
  end 

end
