# Artsycle

[![CircleCI](https://circleci.com/gh/ScotterC/artsycle.svg?style=svg)](https://circleci.com/gh/ScotterC/artsycle)

## Setup
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
    * may need to create an empty migrations directory `mkdir priv/repo/migrations`
  * Install Yarn dependences with `yarn install`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`
  * Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Testing

- `yarn test`
  - must have a local phoenix server running
- `yarn validate` - validate API spec
- `mix test`

Libraries to explore later

- https://github.com/xerions/phoenix_swagger
- https://github.com/rrrene/credo

### TODO

- Dredd not running on circleci. [See Here]](https://gist.github.com/Pierstoval/ee5f9372a82158fb3b80abb6a10a5d1b)


Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
