Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :sessions, only: %i[create destroy]
      resources :users, only: %i[index show create update destroy], param: :uild
    end
  end
end
