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

		if @my_posting.save
			redirect_to root_path(@my_posting)
		else 
			render "new"
	end 

	def edit
		@my_posting = Posting.find params[:posting_id]
	end

	# def edit
	# end 

	# def destroy 
	# end

end
end
