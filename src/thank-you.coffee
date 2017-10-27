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
  "eu que agradeço!",
  "eu que agradeço!!! :v:",
  "imagina",
  "não, não.. obrigado você!",
  "não foi nada",
  "não há de quê",
  "o prazer é meu",
  "obrigado você",
  "opa, estamos aí",
  "por nada",
  "sem problemas",
  "sempre um prazer inoxidável poder ajudar :smile:",
  "tamo junto!",
  ":+1:",
  ":bowtie:",
  ":call_me_hand:",
  ":fist_oncoming:",
  ":ok_hand:",
  ":raised_back_of_hand:",
  ":v:"
]

module.exports = (robot) ->
  robot.respond /(obrigad.|valeu|thanks|thank ?you|gracias|vlw|thx)/i, (msg) ->
    msg.send msg.random response
  thanks = new RegExp "(obrigad.|valeu|thanks|thank ?you|gracias|vlw|thx) *.#{robot.name}", "i"
  robot.hear thanks, (msg) ->
    msg.send msg.random response
