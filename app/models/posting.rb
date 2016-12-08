class Posting < ApplicationRecord
	# now posting has reviews method 
	has_many :reviews
end
