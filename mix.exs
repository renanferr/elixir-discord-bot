defmodule ExBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_bot,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :nostrum],
      mod: {ExBot, []}    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 2.4"},
      {:plug, "~> 1.7"},
      {:plug_cowboy, "~> 2.0"},
      {:jason, "~> 1.1"},
      {:nostrum, git: "https://github.com/Kraigie/nostrum.git"}

    ]
  end
end
