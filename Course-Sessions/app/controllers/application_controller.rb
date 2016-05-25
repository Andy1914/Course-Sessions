class ApplicationController < ActionController::Base
	helper_method :current_user
	before_filter :require_login
	private
	def current_user
  		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	def require_login
		if !session[:user_id]
			redirect_to :controller=>'sessions', :action=>'new'
		end
	end
end
