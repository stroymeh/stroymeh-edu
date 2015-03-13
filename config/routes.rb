Rails.application.routes.draw do
  mount Api => '/'

  devise_for :users

  namespace :manage do
    resources :sections
    resources :pages
  end

  resources :sections, :only => :index

  root :to => 'sections#index'
end
