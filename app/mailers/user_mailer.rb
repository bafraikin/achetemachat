class UserMailer < ApplicationMailer
	def order_mailer

  		@order = params [:order]
  		@user = order.user
	
    	mail(to: @user.email, subject: "Machat order!", reply_to: 'bob.chamo@laposte.net') do |format|
    		format.html {render 'user_mailer/user_order_mailer'}
		end
	end

	def admin_mailer

	    @order = params[:order]
	
	    mail(to: 'bob.chamo@laposte.net', subject: "New Order", reply_to: 'bob.chamo@laposte.net') do |format|
	      format.html { render 'user_mailer/admin_order_mailer'}
	    end
	end
end