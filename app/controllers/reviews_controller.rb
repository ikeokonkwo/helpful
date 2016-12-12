class ReviewsController < ApplicationController

before_action :authenticate_user!, only: [:new, :create, :edit, :update]

  def index
   		@my_posting = Posting.find(params[:posting_id])
		@review_array = @my_posting.reviews

    	render :index
  end

	def new
		@my_posting = Posting.find(params[:posting_id])
		@my_review = @my_posting.reviews.new

		render "new"
	end


	def create 
				@my_posting = Posting.find(params[:posting_id])
				@my_review = @my_posting.reviews.new(
				:name => params[:review][:name],
				:notes => params[:review][:notes],
				:rating => params[:review][:rating],
				)

				 if @my_review.save
					redirect_to posting_reviews_path(@my_posting)
				else
      				render :new
    			end
	end


	def edit
		@my_posting = Posting.find(params[:posting_id])
		@my_review = @my_posting.reviews.find(params[:id])

		render :edit
	end


	def update
		@my_posting = Posting.find(params[:posting_id])
		@my_review = @my_posting.reviews.find(params[:id])

		if @my_review.update(review_params)
		# redirect_to "/postings/#{@my_posting.id}/reviews/#{@my_review.posting_id}"
		redirect_to posting_reviews_path(@my_posting)
		else
			render :edit
		end
	end


	def show
		@my_posting = Posting.find(params[:id])
		@review_array = @my_posting.reviews 
		
		render :index
 
	end 


	def destroy
		@my_posting = Posting.find(params[:posting_id])
		@my_review = @my_posting.reviews.find(params[:id])

		@my_review.destroy
		redirect_to posting_reviews_path(@my_posting)
	end
	


	private
	def  review_params
		params.require(:review).permit(:name, :notes, :rating, :posting_id)
	end 
end