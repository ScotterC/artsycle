# Artsycle

[![CircleCI](https://circleci.com/gh/ScotterC/artsycle.svg?style=svg)](https://circleci.com/gh/ScotterC/artsycle)

Validate API Spec

`yarn validate`

Testing

- `yarn test`
- `mix test`

Libraries to explore later

- https://github.com/xerions/phoenix_swagger (replace Dredd?)
- https://github.com/rrrene/credo (linter)
- https://github.com/ueberauth/guardian (authentication)
- https://github.com/gjaldon/ecto_enum (users table Artist/User etc)

```
pgloader mysql://root@localhost/artsicle_dump postgresql://localhost/artsicle_dump
```

### TODO

- Dredd not running on circleci. [See Here]](https://gist.github.com/Pierstoval/ee5f9372a82158fb3b80abb6a10a5d1b)

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
