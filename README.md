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


















