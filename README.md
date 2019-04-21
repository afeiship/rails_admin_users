# RailsAdminUsers
> Rails gem for admin users.

## model
> The users table fileds.

| field           | type   | length | description               |
| --------------- | ------ | ------ | ------------------------- |
| username        | string | -      | unique user name          |
| email           | string | -      | unique user email         |
| password_digest | string | -      | unique user password(md5) |
| access_token    | string | -      | for login                 |
