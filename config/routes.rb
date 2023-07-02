Rails.application.routes.draw do
            resources :posts
            #root 'posts#index'
            
            
            resources :posts do
                resources :comments
            end
            root 'posts#index'        
end
