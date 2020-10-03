# README

Restaurant APP with name and ratings

rails generate model Restaurant name:string rating:integer || by defaut is string (name || name:string)

generates 2 files

migration file and model file

rails generate migration AddAddressToRestaurants

generate migration file that can use the following methods

  add_column
  change_column
  rename_column
  remove_column
  add_reference

RAILS DB:TASKS

rails db:drop - Drop the database (lose all your data!)
rails db:create - Create the database with an empty schema
rails db:migrate - Run pending migrations on the database schema
rails db:rollback - Revert the last migration
rails db:reset - Drop database + create tables found in schema.rb

IMPORTANT -- if you make changes to migration files make sure to drop DB or Rollback


See all restaurants || index page
See details about one restaurant || show page
Create a restaurant || new and create


INDEX PAGE:

1st step rails generate controller restaurants

create index method on controller --> Restaurant.all

routers.rb --> get "restaurants", to: "restaurants#index"

view --> index.html.erb --> iterate

SHOW PAGE:

routes: get "restaurants/:id", to: "restaurants#show", as: "restaurant"

 PATH needs a key of id in order to create a link

 LINK_TO SHOW PAGE -- > <%= link_to restaurant.name, restaurant_path(restaurant.id || restaurant) %>

 You dont need to iterate because

 controller: @restaurant = Restaurant.find(params[:id])



 CREATE PAGE:

 2 STEPS GET request and POST request

 new method: GET

 NEW PAGE: same steps as before

 new route + new method on controller + new html page


 POST METHOD --> CREATE METHOD ---> NO HTML PAGE

 routes:  post "restaurants", to: "restaurants#create"

 controller: create method

  1st --> whitelist params

   params.require(:restaurant).permit(:name,:address,:rating)

  2nd --> use method in the create method

   @restaurant = Restaurant.new(restaurant_params)
  @restaurant.save

  3rd redirect to show page

EDIT AND UPDATE

 2 steps

  1 get the form

  2 update the restaurant

 routes :
  get "restaurants/:id/edit", to: "restaurants#edit"

  patch "restaurants/:id", to: "restaruants#update"

  controller:
  get the same form from the new and use it on the edit page

  update: find the restaurant, update with params
  redirect to show page

  use a method called set_restaurant to be called in the before_action

    before_action :set_restaurant, only:[:show,:edit,:update]

    def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    end


  PARTIAL

  _form.html.erb to store the form

  use <%= render 'form' %> on new and edit

 DELETE:

  routes: delete "restaurants/:id", to: "restaurants#destroy"

  VERB DELETE
  ACTION DESTROY

  controller: find the restaurant
  @restaurant.destroy
  redirect_to indexpage

  IMPORTANT:
  only works with a link_to
  <%= link_to "delete", restaurant_path(@restaurant), method: :delete,
            data: { confirm: "Are you sure?" } %>


 EXTRA:

  resources :restaurants ## ALL OF THE ROUTES

    #resources :restaurants, only: [:show,:new,:create]

  resources :restaurants, except: [:destroy]











