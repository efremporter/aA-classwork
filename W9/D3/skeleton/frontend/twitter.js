const FollowToggle = require("./follow_toggle")

$(() => {
  let buttons = $("button.follow-toggle");
  buttons.each( (index) => new FollowToggle(buttons[index]))
})