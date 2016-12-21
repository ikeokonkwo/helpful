class MainController < ApplicationController


	def home

		if user_signed_in?
			@name = current_user.first_name
		else 
			@name = "Helper"
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
