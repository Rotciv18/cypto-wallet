const { environment } = require('@rails/webpacker');
const webpack = require('webpack');
const path = require('path')

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    notify: path.resolve(path.join(__dirname, 'vendor/assets/javascripts'))
  })
);

module.exports = environment
