
var Pusher= require("pusher.min.js")

Pusher.logToConsole = true;

var pusher = new Pusher('f9947f14a7229001d725', {
      wsHost: 'ws.pusherapp.com',
      httpHost: 'sockjs.pusher.com',
      encrypted: true
});

var channel = pusher.subscribe('my-channel');
    channel.bind('my-event', function(data) {
      alert(data.message);
});

