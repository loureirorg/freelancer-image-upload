Rails.application.routes.draw do
  root 'application#index'
  post 'upload', to: 'application#upload'
end
