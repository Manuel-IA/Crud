process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')
const textField = new MDCTextField(document.querySelector('.mdc-text-field'));

module.exports = environment.toWebpackConfig()
