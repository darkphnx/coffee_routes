# CoffeeRoutes

Access your Rails named routes from coffeescript.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'coffee_routes'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install coffee_routes

## Usage

Include coffee_routes in your application.coffeee

```coffee
#= require coffee_routes
```

You should now have the CoffeeRoutes object in your global javascript scope.

To access a named route, you can use the CoffeeRoute.path helper directly or you can use the global _path helper that is attached to window that you can call just like you would when writing a rails view.

```coffee
CoffeeRoutes.path('project_item')
=> "/projects/:project_id/item/:id"

project_item_path()
=> "/projects/:project_id/item/:id"
```

To substitute in the parameter values pass in a hash.

```coffee
CoffeeRoutes.path('project_item', {"project_id" : "project-awesome", "id" : 5})
=> "/projects/project-awesome/items/5"

project_item_path({"project_id" : "project-awesome", "id" : 5})
=> "/projects/project-awesome/items/5"
```

You can also get the HTTP verb that should be used with the named route.

```coffee
CoffeeRoutes.method('project_item')
=> "GET"
```