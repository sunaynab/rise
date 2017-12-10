Rails.application.routes.draw do
  # namespace :api do
  #   get 'sessions/create'
  # end
  # 
  # namespace :api do
  #   get 'sessions/destroy'
  # end
  # 
  # namespace :api do
  #   get 'users/new'
  # end
  # 
  # namespace :api do
  #   get 'users/create'
  # end
  # 
  # namespace :api do
  #   get 'users/show'
  # end

  namespace :api, defaults: {format: :json} do
    resources :incidents, only: [:index, :create, :update, :show]
    resources :users, only: [:create, :update, :show]
    resource :session, only: [:create, :destroy]
  end

end
