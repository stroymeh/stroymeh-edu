Rails.application.routes.draw do
  mount Api => '/'

  devise_for :users

  namespace :manage do
    resources :sections, :except => :show
    resources :pages, :except => :index do
      resources :attachments, :except => [:index, :show]
    end

    root :to => 'sections#index'
  end

  resources :sections, :only => [:index, :show], :path => '' do
    resources :pages, :only => :show, :path => ''
  end

  root :to => 'sections#index'
end
