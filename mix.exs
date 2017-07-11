defmodule BearcatPhoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :bearcat_phoenix,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [applications: [:httpotion], extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpotion, "~> 3.0.2"},
      {:poison, "~> 3.1"}
    ]
  end

  defp description do
    """
    This is a first attempt at an API client for the Canvas LMS
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :bearcat_phoenix,
      files: ["lib", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      maintainers: ["Cody Tanner"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/elixir-ecto/postgrex"}
    ]
  end
end
