Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'
  resources 'users'
  get 'gerenciar_imagens', to: 'galleries#image'
  post 'add_images/:id', to: 'galleries#add_images', as: :add_gallery_images

  delete 'delete_images/:id', to: 'galleries#delete_images'
end
