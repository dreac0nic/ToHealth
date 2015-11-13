Rails.application.routes.draw do

    root 'sessions#new'    
    
    get 'signup' => 'users#new'
    get 'todo' => 'todo#index'
    get 'login' => 'sessions#new'
    get 'todo/:id' , to: 'todo#index'
 
    post 'login' => 'sessions#create'

    delete 'logout' => 'sessions#destroy'
 
    resources :todo, :health, :login, :users
end
