defmodule Mix.Tasks.Hello do
  use Mix.Task

  @shortdoc "Say hello"
  def run(_) do
    IO.puts "Hello, World"
  end
end
