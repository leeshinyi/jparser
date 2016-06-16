Rails.application.routes.draw do
  resources :parsers do
    post 'parse_it', on: :collection
  end

  root 'parsers#index'
end
