# Description:
#   Interacts with merge / pull requests of Gitlab and Github.
#
# Commands:
#   hubot merge-request a(ssign) <project-name> <identifier> - Assigns a merge request to a company member.
#   hubot mr a(ssign) <project-name> <identifier>            - Assigns a merge request to a company member.
#   hubot pull-request a(ssign)  <project-name> <identifier> - Assigns a merge request to a company member.
#   hubot pr a(ssign) <project-name> <identifier>            - Assigns a merge request to a company member.
#
# Scopes:
#   open:   All open merge requests. This is the default.
#   closed: All closed merge requests.
#   merged: All accepted / merged merge requests.
#   *:      All merge requests
#

path = require 'path'
view = require path.resolve(__dirname, '..', 'views', 'assign')

module.exports = (robot) ->
  routeRegExp = /((m(erge-)?r(equest)?)|(p(ull-)?r(equest)?))\sa(ssign)?/

  robot.respond routeRegExp, (msg) ->
    console.log msg.envelope.message.text
    # scope = msg.envelope.message.text.replace(/(^bender )/, "").replace(routeRegExp, "").trim()
    #
    # msg.reply "Assigning the merge requests ..."
    #
    # view.render scope, (err, content) ->
    #   if err
    #     msg.reply "An error occurred: #{err}"
    #   else
    #     msg.send content
