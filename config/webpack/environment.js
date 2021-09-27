const { environment } = require('@rails/webpacker')

module.exports = environment


// I add
environment.plugins.append('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
  })
