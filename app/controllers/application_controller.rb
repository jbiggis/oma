class ApplicationController < ActionController::Base
  protect_from_forgery

	def admin_signed_in?

		if cookies[:fbs_196091917091198]
			cookie=Hash[cookies[:fbs_196091917091198].gsub('"','').split("&").map{|s| s.split("=")}]
			if cookie["uid"].to_s == ADMIN_1 || cookie["uid"].to_s == ADMIN_2 || cookie["uid"].to_s == ADMIN_3 || cookie["uid"].to_s == ADMIN_4
				return true
			else
				return false
			end
		end

	end


end
