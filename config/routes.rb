Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :locations do
        resources :adventures
      end
    end
  end
end

# namespace :api do
#   namespace :v1 do
#     resources :locations
#       resources :adventures
#   end
# end
