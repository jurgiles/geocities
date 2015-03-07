Rails.application.routes.draw do
  root 'home#index'

  resource :pocket_content, only: :show
end
