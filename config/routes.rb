L2p::Application.routes.draw do
 match('lessons/', {via: :get, :to => 'lessons#index'})
 match('lessons/:id', {via: :get, :to => 'lessons#show'})
 match('lessons/', {via: :post, :to => 'lessons#create'})
 match('lessons/:id', {via: :delete, :to => 'lessons#delete'})
 match('lessons/:id/edit',{via: :get, :to => 'lessons#edit'})
 match('lessons/:id', {via: [:patch, :put], :to => 'lessons#update'})

 match('sections/', {via: :get, :to => 'sections#index'})
 match('sections/:id', {via: :get, :to => 'sections#show'})
 match('sections/', {via: :post, :to => 'sections#create'})
 match('sections/:id', {via: :delete, :to => 'sections#delete'})
 match('sections/:id/edit',{via: :get, :to => 'sections#edit'})
 match('sections/:id', {via: [:patch, :put], :to => 'sections#update'})

 match('chapters/', {via: :get, :to => 'chapters#index'})
 match('chapters/:id', {via: :get, :to => 'chapters#show'})
 match('chapters/', {via: :post, :to => 'chapters#create'})
 match('chapters/:id', {via: :delete, :to => 'chapters#delete'})
 match('chapters/:id/edit',{via: :get, :to => 'chapters#edit'})
 match('chapters/:id', {via: [:patch, :put], :to => 'chapters#update'})

 match('/', {via: :get, :to => 'homes#index'})

end
