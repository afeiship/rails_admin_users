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

## resources
- https://medium.com/@wintermeyer/authentication-from-scratch-with-rails-5-2-92d8676f6836