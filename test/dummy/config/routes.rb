Rails.application.routes.draw do
  mount Nestibutes::Engine => "/nestibutes"

  get '/contacts/edit', to: 'contacts#edit'
end
