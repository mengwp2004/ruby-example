
require 'web3'
w3 = Web3.new
#while true
	accounts = w3.eth_accounts
        puts accounts.to_s
        bn = w3.eth_blockNumber - 5
        puts 'blocknumber',bn
        bn = 910
        block = w3.eth_getBlockByNumber('0x' + bn.to_s(16))
        puts block.to_s
        for tx in block["transactions"]
                if accounts.include? tx["to"]
                        puts tx.to_s
                        pus  tx["hash"]

                        #postData = Net::HTTP.post_form(URI.parse('http://localhost:3000/webhooks/eth'), {'type'=>'transaction', 'hash'=>tx["hash"]})
                        #sleep 5
                end
        end
#end
