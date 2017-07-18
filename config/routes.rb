Rails.application.routes.draw do
  resources :bank_transactions
  resources :debit_cards
  resources :accounts
  devise_for :customers
  devise_for :admins

  root "pages#show", page: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
