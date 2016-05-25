var http = require("http");
var os = require("os");
http.createServer(function(request, response) {
    var date = new Date();
    var time = date.getTime();
    console.log("New request arrived."+time);
    response.writeHead(200, {"Content-Type": "text/plain"});
    response.write("Hi, you are visiting " + os.hostname() + time.toString() + "\n");
    response.end();
}).listen(80);
console.log("Server is running, listening on port 80....");
