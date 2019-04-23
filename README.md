# RailsAdminUsers
> Rails gem for admin users.

## demo project
- https://github.com/afeiship/rails-module-admin-users

## installation
1. Add gem to Gemfile
  ```rb
  # Gemfile in github:
  gem 'rails_admin_users', git: 'https://github.com/afeiship/rails_admin_users'

  # Debug in local:
  gem 'rails_admin_users', path: '/Users/feizheng/github/rails_admin_users'
  ```
2. Install migration/views/routes/gem
  ```shell
  ./bin/rails g rails_admin_users:install
  bundle install
  rake db:migrate
  ./bin/rails g rails_admin_users:seed
  ```

## option
> ./bin/rails rails_admin_users:install --full

| option | type    | description         |
| ------ | ------- | ------------------- |
| full   | boolean | mount to root route |

## defaults
```rb
RailsAdminUsers::User.create({
  username: "admin",
  password: "123123",
  email: "1290657123@qq.com",
})
```

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
- https://ruby-china.github.io/rails-guides/generators.html