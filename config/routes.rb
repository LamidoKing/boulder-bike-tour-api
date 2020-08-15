Rails.application.routes.draw do
 # Api definition
 namespace :api, defaults: { format: :json }  do
  namespace :v1 do
    resources :admins, only: %i[ create show ]
  end
end
end
