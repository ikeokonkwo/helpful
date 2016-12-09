class ReviewsController < ApplicationController



def new
	@my_posting = Posting.find(params[:posting_id])
	@my_review = Review.new
	render "new"
end


def create 
			@my_review = Review.new(
			:name => params[:review][:name],
			:notes => params[:review][:notes],
			:rating => params[:review][:rating],
			:posting_id => params[:posting_id])

			 @my_review.save

			 puts "\n\n\n-----------------------------"
			 p @my_review
			 puts "-----------------------------\n\n\n"
				redirect_to root_path(@my_posting)
end


def edit
end 


def update
end  




end
