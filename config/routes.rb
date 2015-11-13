Rails.application.routes.draw do

    root 'sessions#new'    
    
    get 'signup' => 'users#new'

    get 'todo' => 'todo#index'
    get 'todo/:id' , to: 'todo#index'
#    get 'todo/show_all' => 'todo#show_all' # Admin Only
    
    get 'health' => 'health#index'

    get 'login' => 'sessions#new'
    get 'logout' => 'sessions#destroy'
    get 'users' => 'users#index' # Admin Only

    post 'login' => 'sessions#create'

    delete 'logout' => 'sessions#destroy'
 
    resources :todo, :health, :login, :users
end
