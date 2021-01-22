const FollowToggle = require('./follow_toggle')

document.addEventListener('DOMContentLoaded', () => {
  $('button.follow-toggle').each(function(idx, btn) {
    // debugger
    console.log(new FollowToggle($(btn)))
  })

})




