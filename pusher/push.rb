require 'pusher'


#PUSHER_APP: 511189
#PUSHER_KEY: 978fda2e9f21e81870de
#PUSHER_SECRET: d8bc92c460c6724420ca


#  PUSHER_APP: 511364
#  PUSHER_KEY: f9947f14a7229001d725
#  PUSHER_SECRET: 3b5bf43c9bfdf1d82dbe

pusher_client = Pusher::Client.new(
#  app_id: '511189',
#  key: '978fda2e9f21e81870de',
#  secret: 'd8bc92c460c6724420ca',
#  cluster: 'ap1'

  app_id: '511364',
  key: 'f9947f14a7229001d725',
  secret: '3b5bf43c9bfdf1d82dbe'

)




pusher_client.trigger('my-channel1', 'my-event1', {:message => 'hello world'})
