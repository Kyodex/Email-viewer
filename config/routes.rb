Rails.application.routes.draw do
  get 'emails/index'

  get 'emails/new'
 root 'emails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
