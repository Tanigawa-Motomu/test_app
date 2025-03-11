Rails.application.routes.draw do
  devise_for :users
  resources :posts, only: [:new, :index, :show, :edit]

end
