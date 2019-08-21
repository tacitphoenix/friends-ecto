defmodule Mix.Tasks.Load do
  use Mix.Task

  @shortdoc "add the first couple of friends"
  def run(_) do
    people = [
      %Friends.Person{first_name: "Ryan", last_name: "Bigg", age: 28},
      %Friends.Person{first_name: "John", last_name: "Smith", age: 27},
      %Friends.Person{first_name: "Jane", last_name: "Smith", age: 26},
    ]
    
    Enum.each(people, fn (person) -> Friends.Repo.insert(person) end)
  end
end
