class UserController < ApplicationController


	def facebook_login
		omniauth = request.env['omniauth.auth']
		redirect_to 'root'
	end
end
