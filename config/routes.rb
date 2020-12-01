Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins

  #管理者
  namespace :admin do
    resources :genres, only: [:index, :create, :edit, :update]
  end
end

