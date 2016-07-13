class UsersController < ApplicationController
	def create
		#la variable que se define llama a un modelo
		@user = User.new
		@user.name = params[:name]
		@user.email = params[:email]
		@user.city = params[:city]
		@user.password = params[:password]
		@user.skill = params[:skill]
		@user.skills = params[:skills]
		@user.expectation = params[:expectation]
		@user.expectation_reason = params[:expectation_reason]
		@user.ocupation = params[:ocupation]
		@user.observations = params[:observations]		
		if @user.save
			session[:user] = @user.id
			#redirect_to users = "/users" + @user.id
			redirect_to "/users/" + @user.id.to_s
		else
		render "new" 			
		end
	end
	def show
		user = User.find(params[:id])		
	end
end
