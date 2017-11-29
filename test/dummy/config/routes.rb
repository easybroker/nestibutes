Rails.application.routes.draw do
  mount Nestibutes::Engine => "/nestibutes"

  resources :contacts
end
