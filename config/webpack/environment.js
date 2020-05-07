const { environment } = require('@rails/webpacker')
const svelte = require('./loaders/svelte')

const webpack = require('webpack')

environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: 'jquery/src/jquery',
        jQuery: 'jquery/src/jquery'
    })
)

environment.loaders.prepend('svelte', svelte)
module.exports = environment