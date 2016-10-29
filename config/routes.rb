Rails.application.routes.draw do
  mount Api => '/'

  devise_for :users

  namespace :manage do
    resources :sections, :except => :show

    resources :pages, :except => :index do
      resources :attachments, :except => [:index, :show]

      post 'sort' => 'pages#sort', :as => :sort
    end

    root :to => 'sections#index'
  end

  get 'tags/:tag' => 'tags#index', :as => :tags

  # legacy routes
  Hashie::Mash.new(YAML.load_file(Rails.root.join('config', 'legacy_routes.yml'))).each do |key, value|
    get key => redirect(value)
  end

  resources :sections, :only => [:index, :show], :path => '' do
    get 'page/:page', controller: :sections, action: :index, on: :collection

    resources :pages, :only => :show, :path => ''
  end

  root :to => 'sections#index'
end
