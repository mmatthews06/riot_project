
var path = require('path');
var webpack = require('webpack');

var styles_dir = __dirname + '/app/styles';

module.exports = {
  entry: './app/index.js',
  devtool: 'source-map',
  output: {
    path: __dirname + '/public',
    filename: 'bundle.js'
  },
  plugins: [
    new webpack.ProvidePlugin({
      riot: 'riot'
    }),
    new webpack.ProvidePlugin({
		   $: "jquery",
		   jQuery: "jquery",
		   "window.jQuery": "jquery",
		   "root.jQuery": "jquery"
		})
  ],
  sassLoader: {
    includePaths: [path.resolve(styles_dir)]
  },
  module: {
    preLoaders: [
      { test: /\.tag$/, exclude: /node_modules/, loader: 'riotjs-loader', query: { type: 'none' } }
    ],
    loaders: [
      { test: /\.js$|\.tag$/, exclude: /node_modules/, loader: 'babel-loader' },
      { test: /\.scss$/, loaders: ["style", "css", "sass"] }
    ]
  },
  devServer: {
    contentBase: './public'
  }
};
