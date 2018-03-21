read = require 'read'
{login} = require '../'
{make_esc} = require 'iced-error'

parse_email_or_username = (email_or_username) ->
  if email_or_username.indexOf('@') > 0 then { email : email_or_username }
  else { username : email_or_username }

exports.cmd = (cb) ->
  esc = make_esc cb, "main"
  username=process.argv[1]
  passphrase=process.argv[2]
  await login { username, email, passphrase }, defer err, res
  cb err, res
