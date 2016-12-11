Rails.application.routes.draw do
	delete "/postings/:id", to: 'postings#destroy', as: "delete_posting"
	delete "/postings/:posting_id/reviews/:id", to: 'reviewss#destroy', as: "delete_review"
	
	resources :postings do 
			resources :reviews
						end
						
	resources :details

	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root "main#home"

	get "/locations", to: "main#getlocations"
	

end
