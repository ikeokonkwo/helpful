class MainController < ApplicationController
	def home
		@f = Posting.find(1)
		render :home
	end

	def getlocations
		
		render json:Posting.all 
	end 
end
