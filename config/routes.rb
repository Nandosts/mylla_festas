Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homepage#index'
  resources 'users'
  get 'gerenciar_imagens', to: 'galleries#image', as: :manage_images
  post 'add_images/:id', to: 'galleries#add_images', as: :add_gallery_images

  delete 'delete_images/:id', to: 'galleries#delete_images', as: :delete_gallery_images
  delete 'delete_all_images', to: 'galleries#delete_all_images', as: :delete_all_gallery_images
end
