Rails.application.routes.draw do
  root :to => 'home#index'
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


 # get 'bookers/new'
 # get 'top' => 'homes#top'
 # post 'bookers' => 'bookers#create'

 # get 'bookers' => 'bookers#index'

 # get 'bookers/:id' => 'bookers#show', as:'booker'

 resources :books

end
