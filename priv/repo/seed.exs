people = [
      %Friends.Person{first_name: "Ryan", last_name: "Bigg", age: 28},
      %Friends.Person{first_name: "John", last_name: "Smith", age: 27},
      %Friends.Person{first_name: "Jane", last_name: "Doe", age: 26},
      %Friends.Person{first_name: "Jack", last_name: "Adams", age: 28},
      %Friends.Person{first_name: "Jill", last_name: "Benny", age: 27},
      %Friends.Person{first_name: "Adam", last_name: "Smith", age: 26},
      %Friends.Person{first_name: "Benard", last_name: "Calhoun", age: 28},
      %Friends.Person{first_name: "Cathrine", last_name: "Davids", age: 27},
      %Friends.Person{first_name: "Daisy", last_name: "Ellaks", age: 26},
      %Friends.Person{first_name: "Ethan", last_name: "Francis", age: 28},
      %Friends.Person{first_name: "Fred", last_name: "James", age: 27},
      %Friends.Person{first_name: "Jennifer", last_name: "Leens", age: 26},
      %Friends.Person{first_name: "Issac", last_name: "Mayors", age: 28},
      %Friends.Person{first_name: "Laura", last_name: "Needs", age: 27},
      %Friends.Person{first_name: "Molly", last_name: "Palour", age: 26},
      %Friends.Person{first_name: "Nadia", last_name: "Ramsey", age: 28},
      %Friends.Person{first_name: "Patrick", last_name: "Olards", age: 27},
      %Friends.Person{first_name: "Rita", last_name: "Wayne", age: 26},
]
    
Enum.each(people, fn (person) -> Friends.Repo.insert(person) end)
