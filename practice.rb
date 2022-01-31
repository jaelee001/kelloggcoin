# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { from_user: nil, to_user: "ben", amount: 20000 },
  { from_user: nil, to_user: "brian", amount: 20000 },
  { from_user: "ben", to_user: "evan", amount: 9000 },
  { from_user: "brian", to_user: "anthony", amount: 7000 },
  { from_user: "evan", to_user: "anthony", amount: 400 },
  { from_user: "ben", to_user: "anthony", amount: 1500 },
  { from_user: "anthony", to_user: "ben", amount: 4500 },
  { from_user: "anthony", to_user: "evan", amount: 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
#outgoing fund array
from_ben = []
for block in blockchain
  if block[:from_user] == "ben"
    from_ben = from_ben + [block[:amount]]
  end
end

from_brian = []
for block in blockchain
  if block[:from_user] == "brian"
    from_brian = from_brian + [block[:amount]]
  end
end

from_evan = []
for block in blockchain
  if block[:from_user] == "evan"
    from_evan = from_evan + [block[:amount]]
  end
end

from_anthony = []
for block in blockchain
  if block[:from_user] == "anthony"
    from_anthony = from_anthony + [block[:amount]]
  end
end

#incoming fund array
to_ben = []
for block in blockchain
  if block[:to_user] == "ben"
    to_ben = to_ben + [block[:amount]]
  end
end

to_brian = []
for block in blockchain
  if block[:to_user] == "brian"
    to_brian = to_brian + [block[:amount]]
  end
end

to_evan = []
for block in blockchain
  if block[:to_user] == "evan"
    to_evan = to_evan + [block[:amount]]
  end
end

to_anthony = []
for block in blockchain
  if block[:to_user] == "anthony"
    to_anthony = to_anthony + [block[:amount]]
  end
end

#$$ per user
ben = to_ben.sum - from_ben.sum
brian = to_brian.sum - from_brian.sum
evan = to_evan.sum - from_evan.sum
anthony = to_anthony.sum - from_anthony.sum
puts "Ben's KelloggCoin balance is #{ben}"
puts "Brian's KelloggCoin balance is #{brian}"
puts "Evan's KelloggCoin balance is #{evan}"
puts "Anthony's KelloggCoin balance is #{anthony}"