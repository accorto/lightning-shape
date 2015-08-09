var express = require('express');
var path = require('path');

var app = express();
app.set('port', process.env.PORT || 5000);

///////////////////////////
// KICK OFF EXPRESS SERVER
///////////////////////////

app.use(express.static(path.resolve(__dirname, 'www')));

var server = app.listen(app.get('port'), function() {
  var host = server.address().address;
  var port = server.address().port;
  console.info('Express: listening on ' + port);
});

module.exports = app;
