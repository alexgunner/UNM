class AdminController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]
	layout 'dashboard'

	def dashboard
		if current_user.nil?
			redirect_to :root
		end
	end
	
	def login
		redirect_to '/users/sign_in'
	end
end
