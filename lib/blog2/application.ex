defmodule Blog2.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      Blog2Web.Telemetry,
      # Start the Ecto repository
      Blog2.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Blog2.PubSub},
      # Start Finch
      {Finch, name: Blog2.Finch},
      # Start the Endpoint (http/https)
      Blog2Web.Endpoint
      # Start a worker by calling: Blog2.Worker.start_link(arg)
      # {Blog2.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Blog2.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Blog2Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
