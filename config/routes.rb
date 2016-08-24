Rails.application.routes.draw do
  resources :networks

  root to: 'networks#index'

  get '/:slug' => 'visit#index', as: :visit
  get '/crawl/:url' => 'crawl#index', as: :crawl, constraints: { url: /.*/ }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
