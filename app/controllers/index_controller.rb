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
    puts '__________________'
    sleep 0.4 
    redirect_to root_path
  end 

  def rm_from_cart
  
    item = current_user.cart.items.find(params[:id])
    item_id = item.id
     index = 0
    while  index < current_user.cart.items.length
      if item_id == current_user.cart.items[index].id
        break
      end
      index += 1
    end 

    p index

    current_user.cart.items[index].delete
    #.slice!(index)
    redirect_to root_path

    
    #cart = c.destroy(params[:id])
    
  end 


end
