Rails.application.routes.draw do
  root 'home#index'

  resource :pototrivia, only: :show
  resource :pocket_articles, only: :show
end
