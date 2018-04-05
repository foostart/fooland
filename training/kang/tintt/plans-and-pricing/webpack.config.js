const path = require('path');
const webpack = require('webpack');
const ExtractTextPlugin = require("extract-text-webpack-plugin");

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
        test: /\.css(\.js)?$/,
        use: ExtractTextPlugin.extract({
          fallback: "style-loader",
          use: "css-loader",
          publicPath: "/build/"
        })
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
  plugins: [
    new ExtractTextPlugin({
      filename: "bundle.css",
      disable: false,
      allChunks: true
    })
  ],
  resolveLoader: {
    moduleExtensions: ["-loader"]
  }
};

module.exports = config;
