# Friends

Sample Ecto application using the Ecto getting started guide

## Setup seeded database

```elixir
mix deps.get
mix ecto.create
mix ecto.migrate
mix run priv/repo/seed.exs
mix run priv/repo/ecto_demo.exs
```

