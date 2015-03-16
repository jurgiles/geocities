Rails.application.routes.draw do
  root 'home#index'

  resource :pocket_articles, only: :show
end
