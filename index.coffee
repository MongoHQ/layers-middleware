fs = require 'fs'
express = require 'express'

middleware = {}
middleware[k] = v for k, v of express when typeof v is 'function' and k[0].toLowerCase() is k[0]

base = __dirname + '/lib'
fs.readdirSync(base).forEach (file) ->
  return if file.indexOf('index.') is 0 or file[0] is '.'
  
  name = file.slice(0, file.lastIndexOf('.'))
  try
    middleware[name] = require(base + '/' + file)
  catch err
    console.log 'Could not load middleware ' + name
    console.log err.stack

module.exports = middleware
