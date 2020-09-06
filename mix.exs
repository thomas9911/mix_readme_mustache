defmodule MixReadmeMustache.MixProject do
  use Mix.Project

  def project do
    [
      app: :mix_readme_mustache,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Mustache Backend for MixReadme",
      package: package(),
      source_url: "https://github.com/thomas9911/mix_readme_mustache"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:mustache, "~> 0.3.0"},
      {:mix_readme, "~> 0.2.0"}
    ]
  end

  defp package do
    [
      licenses: ["Unlicense"],
      links: %{"GitHub" => "https://github.com/thomas9911/mix_readme_mustache"}
    ]
  end
end
