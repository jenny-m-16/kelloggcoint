# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

ben = 0
brian = 0
evan = 0
anthony = 0

index = 0
loop do
  if index == blockchain.size
    break
  elsif blockchain[index]["to_user"] == "ben"
    ben = ben + blockchain[index]["amount"]
  elsif blockchain[index]["from_user"] == "ben"
    ben = ben - blockchain[index]["amount"]
  end
  index = index + 1
end

index_1 = 0
loop do
  if index_1 == blockchain.size
    break
  elsif blockchain[index_1]["to_user"] == "brian"
    brian = brian + blockchain[index_1]["amount"]
  elsif blockchain[index_1]["from_user"] == "brian"
    brian = brian - blockchain[index_1]["amount"]
  end
  index_1 = index_1 + 1
end


index_2 = 0
loop do
  if index_2 == blockchain.size
    break
  elsif blockchain[index_2]["to_user"] == "anthony"
    anthony = anthony + blockchain[index_2]["amount"]
  elsif blockchain[index_2]["from_user"] == "anthony"
    anthony = anthony - blockchain[index_2]["amount"]
  end
  index_2 = index_2 + 1
end

index_3 = 0
loop do
  if index_3 == blockchain.size
    break
  elsif blockchain[index_3]["to_user"] == "evan"
    evan = evan + blockchain[index_3]["amount"]
  elsif blockchain[index_3]["from_user"] == "evan"
    evan = evan - blockchain[index_3]["amount"]
  end
  index_3 = index_3 + 1
end


# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650
puts "Ben's KellogCoin balance is #{ben}"
puts "Brian's KelloggCoin balance is #{brian}"
puts "Anthony's KellogCoin balance is #{anthony}"
puts "Evan's KelloggCoin balance is #{evan}"