class CartsController < ApplicationController
     def show

item = current_user.cart.items.all
 # Récupérer ts les items dans le panier du current user
  end

def add_item_to_order
	#Each @item do |item|
		# add item in current_user.order
	#end
end

end