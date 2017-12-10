Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :incidents, only: [:index, :create, :update, :show]
  end

end
