Rails.application.routes.draw do
  root 'home#index'

  resource :nerdlicious, only: :show
  resource :pocket_articles, only: :show
  resource :drumpad, only: :show
end
