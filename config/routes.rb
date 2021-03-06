Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
	delete "/postings/:id", to: 'postings#destroy', as: "delete_posting"
	delete "/postings/:posting_id/review/:id", to: 'reviews#destroy', as: "delete_review"
	
	resources :postings do 
			resources :reviews
						end
						
	

	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root "main#home"

	get "/locations", to: "main#getlocations"
	
	get "/about", to: "main#about"

end
