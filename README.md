# re_cares_2020_api

This repository implements the backend of the RECares 2020 project.

## User authentication

Users receive an authentication token upon signing in or registering for an
account. They can then use this token to identify themselves by adding the
following headers to their requests:

```
X-User-Email alice@example.com
X-User-Token Gp7NKBd8-wgXqazx-cuk
```

An alternative method is passing them in as query parameters.

```
https://secure.example.com?user_email=alice@example.com&user_token=1G8_s7P-V-4MGojaKD7a
```

You can even mix and match these methods if you really wanted to (please don't).

## API Endpoints

### User registration

#### Path

`POST /users`

#### Send


```json
{
    "user": {
        "email": "alice@example.com",
        "password": "foobar"
    }
}
```

#### Receive

```json
{
    "id": 1,
    "email": "alice@example.com",
    "created_at": "2020-09-02T22:25:57.282Z",
    "updated_at": "2020-09-02T22:25:57.282Z",
    "authentication_token": "Gp7NKBd8-wgXqazx-cuk"
}
```

### User sign in

#### Path

`POST /users/sign_in`

#### Send

```json
{
    "user": {
        "email": "alice@example.com",
        "password": "foobar"
    }
}
```

#### Receive

```json
{
    "id": 1,
    "email": "alice@example.com",
    "created_at": "2020-09-02T22:28:19.210Z",
    "updated_at": "2020-09-02T22:28:19.210Z",
    "authentication_token": "1QMU_xuspnHL3uMvVyyq"
}
```

### User sign out

#### Path

`DELETE /users/sign_out`

#### Send

This request does not have a body.

#### Receive

`200 OK`

### Retrieve module JSON

#### Path

`GET /site_modules/:the_module_name`

Example: `GET /modules/passwords`

#### Send

This request does not have a body.

#### Receive

The module data as a JSON dictionary.

### Retrive metadata on all modules

#### Path

`GEt /site_modules`

### Send

This request does not have a body.

#### Receive

```json
[
    {
        "id": 1,
        "name": "Passwords",
        "created_at": "2020-09-04T00:48:09.372Z",
        "updated_at": "2020-09-04T00:48:09.372Z"
    }
]
```
