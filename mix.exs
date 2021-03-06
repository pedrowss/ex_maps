defmodule ExMaps.MixProject do
  use Mix.Project
  @github_url "https://github.com/Kociamber/ex_maps"

  def project do
    [
      app: :ex_maps,
      version: "1.1.2",
      elixir: "~> 1.8",
      deps: deps(),
      start_permanent: Mix.env() == :prod,
      # Docs
      name: "ExMaps",
      description: "Google Maps API Elixir client.",
      source_url: @github_url,
      homepage_url: @github_url,
      package: [
        maintainers: ["Rafał Kociszewski"],
        licenses: ["MIT"],
        links: %{"GitHub" => @github_url}
      ],
      # include readme and changelog in the package documentation on HexDocs
      docs: [
        main: "readme",
        extras: ["README.md", "CHANGELOG.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ExMaps.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.4"},
      {:jason, "~> 1.1"},
      {:credo, "~> 0.10.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.19", only: :dev, runtime: false},
      {:nebulex, "~> 1.0"}
    ]
  end
end
