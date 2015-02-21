class UsersController < ApplicationController
	def new
	end

	def login
	end

	def post_login
		@user = User.where(username: params[:username]).take
		if @user != nil && @user.password_valid?(params[:password]) then
			session[:username] = params[:username]
			url = url_for(controller: 'trips', action: 'new', only_path: true)
			redirect_to url
		else
			flash[:notice] = "Sorry, the user \"" + params[:username] + "\" does not exist, or the passsword was incorrect. Try again?"
			redirect_to url_for(controller: 'users', action: 'login', only_path: true)
		end
	end
end
