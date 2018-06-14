Rails.application.routes.draw do
  get  'v2', to: 'exchanges_v2#index'
  get 'exchanges_v2/convert'
  
  root 'exchanges#index'
  get 'convert', to: 'exchanges#convert'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
