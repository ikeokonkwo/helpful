class MainController < ApplicationController
	def home
		
		render :home
	end

	def getlocations

		render json:Posting.all 
	end 
	def about
		render :about
	end
end
