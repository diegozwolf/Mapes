class WelcomeController < ApplicationController
	def create
        @welcome = Welcome.new
        @welcome.name = params[:name]
        @welcome.email = params[:email]        
        if @welcome.save
            render "/welcome"
        else
            flash[:notice] = "Hay errores en el formulario."
            redirect_to "/"
        end
    end
    def welcome
    	render "/welcome"    	
    end

    def connect
        @welcome = Welcome.where(email: request.env['omniauth.auth']["info"]["email"]).first
        if @welcome
            #session[:welcome] = @welcome.id
            #redirect_to @welcome
             render "/welcome"
        else
            @welcome = Welcome.new
            @welcome.name = request.env['omniauth.auth']["info"]["name"]
            @welcome.email = request.env['omniauth.auth']["info"]["email"]
            @welcome.provider_uuid = request.env['omniauth.auth']["uid"]
            if @welcome.save
                #session[:welcome] = @welcome.id
                #redirect_to @welcome
                 render "/welcome"
            else
                flash[:notice] = "La conexión no se pudo realizar."
                redirect_to "/"
            end
        end
    end

    
end
