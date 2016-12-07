class PostingsController < ApplicationController

	def new
		@my_posting = Posting.new 
		render "new"
	end 

	def create 
		@my_posting = Posting.new(

			:title => params[:posting][:title],
			:location => params[:posting][:location],
			:description => params[:posting][:description])
		@my_posting.save
		redirect_to root_path(@my_posting)
	end 

	# def edit
	# end 

	# def destroy 
	# end

end

