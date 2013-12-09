NestedChaos::Application.routes.draw do
  get "static_pages/about"
  resources :whois_contacts

  resources :countries

  resources :company_types

  resources :domains

  root :to => "home#index"
end
