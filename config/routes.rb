Rails.application.routes.draw do
    
    #Define your application routes per
            resources :posts
    #Defines the root path oute("/")
    #root "articles#index"
    resources :posts do
        resources :comments
    end
    root 'posts#index'        
end
