Rails.application.routes.draw do
  get 'uploader/index'
  get 'uploader/form'
  get 'uploader/upload'
  get 'uploader/download'
  devise_for :users
  resources :prefectures
  resources :restaurants do
    resources :reviews, except: :index
  end

  root 'restaurants#index'
  root 'reviews#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
