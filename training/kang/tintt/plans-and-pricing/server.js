import express from 'express';
import fs from 'fs';
import path from 'path';
import React from 'react';
import ReactDOMServer from 'react-dom/server';
import App from './src/components/App';
import Transmit from 'react-transmit';
import bodyParser from 'body-parser';

/*function handleRender(req, res) {
  Transmit.renderToString(App).then(({ reactString, reactData }) => {
    fs.readFile('./src/index.html', 'utf8', function (err, data) {
      if (err) throw err;

      const document = data.replace(/<div id="app"><\/div>/, `<div id="app"><section role="main" class="react-container"><div>${reactString}</div></section></div>`);
      const output = Transmit.injectIntoMarkup(document, reactData, ['/build/bundle.js']);

      res.send(document);
    });
  });
}*/
function handleRender(req, res) {
  const reactHtml = ReactDOMServer.renderToString(<App />);
  const htmlTemplate = `<!DOCTYPE html>
  <html lang="en">
  <head>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
      <title>React server rendering example</title>
  </head>
  <body>
      <div id="app">${reactHtml}</div>
      <script src="../build/bundle.js"></script>
  </body>
</html>`;
  res.send(htmlTemplate);
}

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

// Serve built files with static files middleware
app.use('/build', express.static(path.join(__dirname, 'build')));

// Serve requests with our handleRender function
app.get('*', handleRender);

// Start server
app.listen(3000);
