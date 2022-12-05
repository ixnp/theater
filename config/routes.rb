Rails.application.routes.draw do
  resources :productions
  root "productions#index"
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

end
