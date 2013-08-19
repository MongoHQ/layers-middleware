module.exports = (app) ->
  {
    write: app.logger.info.bind(app.logger)
  }
