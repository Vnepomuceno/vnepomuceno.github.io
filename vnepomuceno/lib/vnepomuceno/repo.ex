defmodule Vnepomuceno.Repo do
  use Ecto.Repo,
    otp_app: :vnepomuceno,
    adapter: Ecto.Adapters.Postgres
end
