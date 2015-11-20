Rails.application.routes.draw do

    root 'sessions#new'    
    
    get 'signup' => 'users#new'

    get 'todo' => 'todo#show'
    post 'todo/create' => 'todo#create'
#    get 'todo/index' => 'todo#index' # Admin Only
    
    get 'health' => 'health#index'

    get 'login' => 'sessions#new'
    get 'logout' => 'sessions#destroy'
    get 'users' => 'users#index' # Admin Only

    post 'login' => 'sessions#create'

    delete 'logout' => 'sessions#destroy'
 
    resources :todo, :health, :login, :users, :todos
end
