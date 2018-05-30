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
    p current_user.cart.items
    puts '__________________'
    sleep 0.4 
    redirect_to root_path
  end 

  

  def rm_from_cart

    item_id = params[:id]
    cart_id = current_user.cart.id
    bridge = Bridge.where("cart_id == #{cart_id} AND item_id == #{item_id} ").first
    bridge.destroy
    redirect_to root_path

  end 


end
