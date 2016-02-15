defmodule Metrics.Mixfile do
  use Mix.Project

  def project do
    [app: :metrics,
     version: "0.0.1",
     elixir: "~> 1.2-rc",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger],
     mod: {Metrics, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:hdr_histogram, git: "https://github.com/HdrHistogram/hdr_histogram_erl.git", tag: "0.2.6"},
      # Development only
      {:dialyxir, "~> 0.3", only: [:dev]}
    ]
  end
end
