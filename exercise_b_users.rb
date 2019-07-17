users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20], #array
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog" #array of hashes
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

users["Jonathan"][:pets][0][:name]

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p users["Jonathan"][:twitter]
# 2. Get Erik's hometown
p users["Erik"][:home_town]
# 3. Get the array of Erik's lottery numbers
p users["Erik"][:lottery_numbers]
# 4. Get the type of Avril's pet Monty
p users["Avril"][:pets][0][:name]
# 5. Get the smallest of Erik's lottery numbers
for number in users["Erik"][:lottery_numbers]
  if number < 18
    p number
  end
end

# 6. Return an array of Avril's lottery numbers that are even
for number in users["Avril"][:lottery_numbers]
  if number % 2 == 0
    p number
  end
end
# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
users["Erik"][:lottery_numbers].push(7)

p users["Erik"][:lottery_numbers]
# 8. Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"

p users["Erik"][:home_town]
# 9. Add a pet dog to Erik called "Fluffy"
users2 = {
  "Erik" => {
    :pets => [
    {
      :name => "fluffy",
      :species => "dog"
    }
  ]
}
}

users.merge(users2)


# 10. Add another person to the users hash
