Rails.application.routes.draw do
  resources :site_modules, only: [:index]
  get 'site_modules/passwords'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
end
