const FollowToggle = require('./follow_toggle')

require('./follow_toggle')

$('button.follow-toggle').each(function(idx, btn) {
  new FollowToggle(btn)
})


