class MainController < ApplicationController
	def home
		
		render :home
	end

	def getlocations

		render json:Posting.all 
	end 
end
