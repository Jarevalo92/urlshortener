Rails.application.routes.draw do
   get '/' => 'url#new'
   get '/:id' => 'url#redirect'
   resources :url
end
