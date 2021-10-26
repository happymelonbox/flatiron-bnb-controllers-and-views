Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/users_params'

  get 'reviews/new'

  get 'reviews/create'

  get 'reviews/edit'

  get 'reviews/update'

  get 'reviews/destroy'

  get 'reviews/reviews_params'

  get 'reservations/new'

  get 'reservations/edit'

  get 'reservations/create'

  get 'reservations/update'

  get 'reservations/destroy'

  get 'reservations/reservations_params'

  get 'neighborhoods/new'

  get 'neighborhoods/edit'

  get 'neighborhoods/create'

  get 'neighborhoods/update'

  get 'neighborhoods/destroy'

  get 'listings/new'

  get 'listings/create'

  get 'listings/edit'

  get 'listings/update'

  get 'listings/destroy'

  get 'listing/new'

  get 'listing/create'

  get 'listing/edit'

  get 'listing/update'

  get 'listing/destroy'

  get 'cities/new'

  get 'cities/create'

  get 'cities/update'

  get 'cities/edit'

  get 'cities/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
