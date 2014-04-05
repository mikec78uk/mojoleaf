Mojoleaf::Application.routes.draw do


  devise_for :users
  resources :tests do
    # Can be created within a test
    resources :results 
    # collection do
    #       post 'update_multiple/:result_ids', :action => 'update_multiple'
    #   end
  end


  # Pulled out as well so can do a list of results without being nested into tests
  resources :results
  
  resources :tests do
	  member do
	    get 'thanks'
	  end
	end


  resources :tests do
	  member do
	    get 'expired'
	  end
	end
	
  resources :tests do
	  member do
	    get 'already_completed'
	  end
	end

	
	resources :contents do
	 member do
	  get 'home'
	 end
	end


  # Added for statiic pages		
  get '/cookie_policy', to: 'contents#cookie_policy', as: :cookie_page
  get '/privacy_policy', to: 'contents#privacy_policy', as: :privacy_page
  get '/terms_of_service', to: 'contents#terms_of_service', as: :terms_page
  
  
  # For custom error pages

match "404", :to => "errors#not_found", via: 'get'
match "422", :to => "errors#unacceptable", via: 'get'
match "500", :to => "errors#internal_error", via: 'get'


 # get "/faq", to: "pages#faq", as: :faq_page



  root "contents#home"

  
end
