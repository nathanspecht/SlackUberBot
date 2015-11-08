Rails.application.routes.draw do
  namespace :api do
  post 'slash_commands/create'
  end
end
