class PostingsController < ApplicationController

	def new
		@my_posting = Posting.new 
		@my_review = Review.new
		render "new"
	end 

	def create 
		
		coords = Geokit::Geocoders::MultiGeocoder.geocode(params[:posting][:location])

		@my_posting = Posting.new(

			:title => params[:posting][:title],
			:location => params[:posting][:location],
			:description => params[:posting][:description],
			:phone => params[:posting][:phone],
			:email => params[:posting][:email],
			:latitude => coords.lat,
			:longitude => coords.lng)

		if @my_posting.save
			redirect_to root_path(@my_posting)
		else 
			render "new"
		end 


		@my_review = Review.new(
			:name => params[:review][:name],
			:notes => params[:review][:notes],
			:rating => params[:review][:rating])

		 @my_review.save
			redirect_to root_path(@my_posting)
		


	end

	
	# def edit
	# 	@my_posting = Posting.find params[:posting_id]
	# end

	# def edit
	# end 

	# def destroy 
	# end

	def show
		@my_posting = Posting.find(params[:id])
		@review_array = @my_posting.reviews
		
		render "details" 
	end 


end



