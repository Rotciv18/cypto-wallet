const { environment } = require('@rails/webpacker');
const webpack = require('webpack');

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    notify: 'notify-js-legacy/notify',
    // popperjs: 'popper.js/src/index',
    // bootstrap: 'bootstrap'
  })
);

module.exports = environment
