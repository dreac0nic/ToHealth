Rails.application.routes.draw do
    root 'login#index'

    get 'todo/:id' , to: 'todo#index'
  
    resources :todo, :health, :login
end
