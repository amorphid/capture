defmodule Capture.Mixfile do
  use Mix.Project

  def application() do
    [
      extra_applications: [:logger],
      mod: {Capture.Application, []},
    ]
  end

  def project() do
    [
      app: :capture,
      build_embedded: Mix.env == :prod,
      deps: deps(),
      elixir: "~> 1.4",
      start_permanent: Mix.env == :prod,
      version: "0.1.0",
    ]
  end

  ###########
  # Private #
  ###########

  defp deps() do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false},
    ]
  end
end
