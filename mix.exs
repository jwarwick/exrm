defmodule ReleaseManager.Mixfile do
  use Mix.Project

  def project do
    [ app: :exrm,
      version: "0.8.1",
      elixir: "~> 0.14.0-dev",
      description: description,
      package: package,
      # deps: [{:conform, "~> 0.4.0"}] ]
      deps: [{:conform, git: "https://github.com/jwarwick/conform.git", branch: "v0.14"}]]
  end

  def application, do: []

  defp description do
    """
    Exrm, or Elixir Release Manager, provides mix tasks for building, 
    upgrading, and controlling release packages for your application.
    """
  end

  defp package do
    [ files: ["lib", "priv", "mix.exs", "README.md", "LICENSE"],
      contributors: ["Paul Schoenfelder"],
      licenses: ["MIT"],
      links: [ { "GitHub", "https://github.com/bitwalker/exrm" } ] ]
  end

end
