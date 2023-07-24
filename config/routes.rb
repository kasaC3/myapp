Rails.application.routes.draw do
    #Define your application routes per
    #Defines the root path oute("/")
    #root "articles#index"
    resources :posts
    resources :posts do
        resources :comments
    end
    resources :users
    resources :sessions
    root 'posts#index'        
end
