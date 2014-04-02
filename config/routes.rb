L2p::Application.routes.draw do
 match('/', {via: :get, :to => 'lessons#index'})
end
