require 'web3'
w3 = Web3.new
accounts = w3.personal_listAccounts
puts accounts.to_s
puts w3.eth_getBalance accounts[0]
#amount_to_send = 0.0001
#w3.sendEther(accounts[0], accounts[1], amount_to_send, "mypassword")


