Rails.application.routes.draw do
  resources :bank_transactions
  resources :debit_cards
  resources :accounts
  resources :customers
  devise_for :admins

  devise_scope :admin do
    authenticated :admin do
      root "pages#show", page: "home"
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
