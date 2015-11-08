Rails.application.routes.draw do
  root to: "api/slash_commands#create"
  namespace :api, defaults: {format: :json} do
    resources :slash_commands, only: [:create]
  end
end
