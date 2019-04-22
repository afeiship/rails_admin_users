# RailsAdminUsers
> Rails gem for admin users.

## model
> The users table fileds.

| field           | type   | length | description                      |
| --------------- | ------ | ------ | -------------------------------- |
| username        | string | -      | unique user name                 |
| email           | string | -      | unique user email                |
| password_digest | string | -      | unique user password(md5+random) |
| auth_token      | string | -      | for login                        |

```shell
./bin/rails g model User username:string email:string password_digest:string auth_token:token
```

## generators
~~~
RailsAdminUsers:
  rails_admin_users:install
  rails_admin_users:seed
~~~

## dependencies
```rb
gem 'bcrypt', '~> 3.1.7'
gem 'kaminari'
```

## routes
```shell
$ rake app:routes
# ....
Routes for RailsAdminUsers::Engine:
    users GET    /users(.:format)          rails_admin_users/users#index
          POST   /users(.:format)          rails_admin_users/users#create
 new_user GET    /users/new(.:format)      rails_admin_users/users#new
edit_user GET    /users/:id/edit(.:format) rails_admin_users/users#edit
     user GET    /users/:id(.:format)      rails_admin_users/users#show
          PATCH  /users/:id(.:format)      rails_admin_users/users#update
          PUT    /users/:id(.:format)      rails_admin_users/users#update
          DELETE /users/:id(.:format)      rails_admin_users/users#destroy
 sessions POST   /sessions(.:format)       rails_admin_users/sessions#create
     root GET    /                         rails_admin_users/users#index
    login GET    /login(.:format)          rails_admin_users/sessions#new
   logout DELETE /logout(.:format)         rails_admin_users/sessions#destroy
```

## resources
- https://medium.com/@wintermeyer/authentication-from-scratch-with-rails-5-2-92d8676f6836
- https://www.mccartie.com/tech/2016/11/03/token-based-api-authentication.html