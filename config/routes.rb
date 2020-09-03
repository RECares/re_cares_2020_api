Rails.application.routes.draw do
  get 'modules/passwords'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
end
