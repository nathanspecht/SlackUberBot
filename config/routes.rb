Rails.application.routes.draw do
  root to: "api/slash_commands#create"
  namespace :api do
  post 'slash_commands/create'
  end
end
