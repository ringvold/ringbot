defmodule Ringbot.MixProject do
  use Mix.Project

  def project do
    [
      app: :ringbot,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Ringbot, []},
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
    [
      {:alchemy, "~> 0.6.4", hex: :discord_alchemy},
      {:socket, "~> 0.3"},
      {:jason, "~> 1.2"},
      {:mcping, "~> 0.1.1"}
    ]
  end
end
