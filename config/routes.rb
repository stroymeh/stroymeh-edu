Rails.application.routes.draw do
  mount Api => '/'

  devise_for :users

  namespace :manage do
    resources :sections, :except => :show
    resources :pages, :except => [:index, :show]

    root :to => 'sections#index'
  end

  resources :sections, :only => :index

  root :to => 'sections#index'
end
