Rails.application.routes.draw do
  root 'home#index'
  scope :api do
    scope :v1 do
      resources :daily_log, controller: 'daily_log'
    end
  end
end