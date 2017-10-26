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
#   hubot obrigado|valeu|thank[s] [you]|gracias|vlw|thx - Hubot aceita seu agradecimento
#
# Author:
#   github.com/delucas
#

response = [
  "Obrigado você.",
  "Sem problemas!",
  "Não, não.\nObrigado você!",
  "O prazer é meu!",
  "Não foi nada!",
  "Por nada!",
  "Imagina!",
  "Não há de quê.",
  "Eu que agradeço!",
  ":+1:",
  ":ok_hand:",
  ":fist_oncoming:",
  ":v:",
  "Eu que agradeço!!! :v:",
  ":raised_back_of_hand:"
]

module.exports = (robot) ->
  robot.respond /(obrigad.|valeu|thanks|thank ?you|gracias|vlw|thx)/i, (msg) ->
    msg.send msg.random response
  thanks = new RegExp "(obrigad.|valeu|thanks|thank ?you|gracias|vlw|thx) *.#{robot.name}", "i"
  robot.hear thanks, (msg) ->
    msg.send msg.random response
