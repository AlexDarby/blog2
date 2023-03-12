defmodule Blog2.Repo do
  use Ecto.Repo,
    otp_app: :blog2,
    adapter: Ecto.Adapters.Postgres
end
