# Description:
#   Hubot responds any thank message politely. Phrases from:
#   http://www.macmillandictionary.com/thesaurus-category/british/Ways-of-accepting-someone-s-thanks
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot obrigado|valeu|thank[s] [you]|gracias|vlw - Hubot aceita seu agradecimento
#
# Author:
#   github.com/delucas
#

response = [
  "obrigado você",
  "sem problemas",
  "não, não. obrigado você!",
  "o prazer é meu",
  "não foi nada",
  "por nada",
  "imagina",
  "não há de quê",
  "eu que agradeço!",
  ":+1:",
  ":ok_hand:",
  ":fist_oncoming:",
  ":raised_back_of_hand:",
  ":v:",
  ":fist_oncoming: :nerd_face:"
]

module.exports = (robot) ->
  robot.respond /(obrigado|valeu|thanks|thank you|gracias|vlw|thx)/i, (msg) ->
    msg.send msg.random response
  thanks = new RegExp "(obrigado|valeu|thanks|thank you|gracias|vlw|thx) *.#{robot.name}", "i"
  robot.hear thanks, (msg) ->
    msg.send msg.random response
