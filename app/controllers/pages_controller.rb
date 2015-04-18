class PagesController < ApplicationController
	before_filter :authenticate_user!

	def home
	end

	def reset_key
		current_user.generate_api_key
		flash[:notice] = "Your API Key has been reset"
		redirect_to root_url
	end
end
