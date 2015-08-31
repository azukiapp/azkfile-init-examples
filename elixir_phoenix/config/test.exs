use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_phoenix, ElixirPhoenix.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Set a higher stacktrace during test
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :elixir_phoenix, ElixirPhoenix.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "elixir_phoenix_test",
  pool: Ecto.Adapters.SQL.Sandbox
