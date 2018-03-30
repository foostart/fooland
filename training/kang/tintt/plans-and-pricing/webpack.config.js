const path = require('path');
const webpack = require('webpack');

const config = {
  entry: ['./src/index.js'],
  output: {
    path: path.join(__dirname, 'build/'),
    filename: 'bundle.js',
    publicPath: '/build/'
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        use: [
          {
            loader: "style-loader"
          },
          {
            loader: "css-loader",
            options: {
              modules: true
            }
          }
        ]
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel'
      },
      {
        test: /\.jsx$/,
        exclude: /node_modules/,
        loader: 'babel'
      }, {
        test: /\.json$/,
        loader: 'json-loader'
      }
    ]
  },
  resolveLoader: {
    moduleExtensions: ["-loader"]
  }
};

module.exports = config;
