// Slightly modified version of classic node server app - this responds with hostname
// https://nodejs.org/en/about/

const http = require('http');
const os = require('os');

const port = 3000;
const hostname = os.hostname();

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  // Since HTTP/1.1 defaults to persistent connections, ensure we close the
  // connection with the response to make it easier to demo automatic
  // round-robin load balancing when refreshing in a browser
  // (this isn't an issue when using curl since it automatically closes
  // the connection).
  res.setHeader('Connection', 'close');
  res.setHeader('Content-Type', 'text/plain');
  res.end(`[${hostname}] hello\n`);
});

// listen to all networks, not just localhost, from inside container
server.listen(port, '0.0.0.0', () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});

