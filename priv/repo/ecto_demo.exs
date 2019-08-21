# required to use macros in Ecto.Query e.g. where
require Ecto.Query

# find the first record
query = Friends.Person |> Ecto.Query.first
query |> Friends.Repo.one |> IO.inspect()

# find the last record
query = Friends.Person |> Ecto.Query.last
query |> Friends.Repo.one |> IO.inspect()

# find record by id
Friends.Person |> Friends.Repo.get(18) |> IO.inspect()

# find record by field (get_by)
Friends.Person |> Friends.Repo.get_by(last_name: "Adams") |> IO.inspect()

# find record by field (where)
query = Friends.Person |> Ecto.Query.where(last_name: "Adams") 
query |> Friends.Repo.one |> IO.inspect()

# find record by field (from)
query = Ecto.Query.from(p in Friends.Person, where: p.last_name == "Bigg")
query |> Friends.Repo.all |> IO.inspect()

# find all records
Friends.Person |> Friends.Repo.all |> IO.inspect()

# find all names
people = Friends.Person |> Friends.Repo.all
#people |> Enum.map(fn p -> {p.first_name, p.last_name} end) |> IO.inspect() # anonymous function
#people |> Enum.map(&({&1.first_name, &1.last_name})) |> IO.inspect() # short-hand function
for p <- people, do: {p.first_name, p.last_name} |> IO.inspect() # for comprehension

# composable queries
query = Friends.Person |> Ecto.Query.where(last_name: "Bigg")
query = query |> Ecto.Query.where(first_name: "Ryan")
query |> Friends.Repo.one |> IO.inspect()
