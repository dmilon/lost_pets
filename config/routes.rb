Rails.application.routes.draw do
  # As a user, I can create a new pet
  get "pets/new", to: 'pets#new', as: :new_pet
  post "pets", to: 'pets#create'

  # As a user, I can list all pets
  get "pets", to: 'pets#index'
  # As a user, I can see details of a pet
  get "pets/:id", to: 'pets#show', as: :pet
  # As a user, I can edit an existing pet
  get "pets/:id/edit", to: 'pets#edit', as: :edit_pet
  patch "pets/:id", to: 'pets#update'
  # As a user, I can delete a pet
  delete "pets/:id", to: 'pets#toto'
  # resources :pets
end
