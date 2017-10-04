Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :people
  get 'people' => 'people#index'
  post 'people' => 'people#create'
  get 'people/new' => 'people#new', as: 'new_person'
  get 'people/:id' => 'people#show', as: 'person'
  get 'people/:id/edit' => 'people#edit', as: 'edit_person'
  put 'people/:id' => 'people#update'
  delete 'people/:id' => 'people#destroy'
end
