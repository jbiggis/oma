class Subscription < ActiveRecord::Base
  validates :email, 
		:uniqueness => true, 
		:presence => true, 
		:length => { :minimum => 3, :maximum => 40 },
		:format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

end
