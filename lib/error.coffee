module.exports = (app) ->
  (err, req, res, next) ->
    res.send(err.statusCode or 500, error: err.userMessage or err.message)
    app.logger.error(err)
