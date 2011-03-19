class SubscriptionsController < ApplicationController
  def new
		@subscription = Subscription.new
  end

  def create


#		unless 
Subscription.create!(:email => params[:email])
			#raise Exception 
			#logger.debug "ERROR - Can't create email:" + params[:subscription][:email]
		#end
		
		return
		#flash[:notice] = 'Email Submitted.'
		#redirect_to root_url
  end

end
