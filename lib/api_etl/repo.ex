defmodule ApiEtl.Repo do
  use Ecto.Repo,
    otp_app: :api_etl,
    adapter: Ecto.Adapters.Postgres
end
