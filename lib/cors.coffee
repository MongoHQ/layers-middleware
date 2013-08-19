module.exports = ->
  (req, res, next) ->
    res.set
      'Access-Control-Allow-Origin': '*'
      'Access-Control-Allow-Methods': 'GET,PUT,POST,DELETE'
      'Access-Control-Allow-Headers': req.get('Access-Control-Request-Headers')
    
    return res.send(200) if req.method is 'OPTIONS'
    next()
