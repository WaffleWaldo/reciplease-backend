Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET /api/v1/recipes/:id

  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:show]
    end
  end

end
