class MainController < ApplicationController
	before_filter :authenticate_user!

	def home
		 @current_user = User.find_by(id: session[:user_id])

	    if @current_user == nil
	      @name = "Helper"
	    else
	      @name = User.first_name
    end

		render :home
	end


	def getlocations

		render json:Posting.all 
	end 

	def about
		render :about
	end
end
