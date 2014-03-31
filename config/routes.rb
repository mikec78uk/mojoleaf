Mojoleaf::Application.routes.draw do


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
	
	
	resources :contents do
	  member do
	    get 'home'
	  end
	end


  root "contents#home"

  
end
