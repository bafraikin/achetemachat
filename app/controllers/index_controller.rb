class IndexController < ApplicationController
	
  def index

  	@items = Item.all

  end
  
  def cart
  end

end
