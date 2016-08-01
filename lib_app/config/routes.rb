Rails.application.routes.draw do
	root to: "users#index"

  	get "/users", to: "users#index", as: "users"

  	get "/users/new", to: "users#new", as: "new_user"

  	post "/users", to: "users#create", as: "create_user"

  	get "/users/:id", to: "users#show", as: "user"

  	get "/sign_in", to: "sessions#new", as: "new_session"

  	post "/sessions", to: "sessions#create", as: "create_session"

    delete "/sessions", to: "sessions#destroy", as: "logout"

  	get "/libraries", to: "libraries#index", as: "libraries"

  	get "/libraries/new", to: "libraries#new", as: "new_library"

  	post "/libraries", to: "libraries#create", as: "create_libraries"

  	get "/libraries/:id/edit", to: "libraries#edit", as: "edit_library"

  	patch "/libraries/:id", to: "libraries#update", as: "update_library"

  	get "/libraries/:id", to: "libraries#show", as: "library"

  	delete "/libraries/:id", to: "libraries#destroy", as: "destroy_library"

  	get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"

  	post "/libraries/:library_id/users", to: "library_users#create", as: "library_users"

    

end
