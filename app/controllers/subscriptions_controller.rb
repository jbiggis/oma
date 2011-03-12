class SubscriptionsController < ApplicationController
  def new
		@subscription = Subscription.new
  end

  def create
		unless Subscription.create(params[:subscription])
			raise Exception 
			logger.debug "ERROR - Can't create email:" + params[:subscription][:email]
		end
		redirect_to root_url
  end

end
