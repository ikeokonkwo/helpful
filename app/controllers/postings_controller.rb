class PostingsController < ApplicationController

	def new
		@my_posting = Posting.new 
		render "new"
	end 

	def create 
		
		coords = Geokit::Geocoders::MultiGeocoder.geocode(params[:posting][:location])

		@my_posting = Posting.new(

			:title => params[:posting][:title],
			:location => params[:posting][:location],
			:description => params[:posting][:description],
			:latitude => coords.lat,
			:longitude => coords.lng)
		@my_posting.save
		redirect_to root_path(@my_posting)
	end 

	# def edit
	# end 

	# def destroy 
	# end

end

