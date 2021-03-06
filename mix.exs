defmodule PrometheusPlugsExample.Mixfile do
  use Mix.Project

  def project do
    [app: :prometheus_plugs_example,
     version: "0.2.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :cowboy, :plug, :prometheus],
     mod: {PrometheusPlugsExample, []}]
  end

  defp deps do
    [{:prometheus_plugs, "~> 0.9"},
     {:prometheus_process_collector, "~> 0.2"}
    ]
  end
end
