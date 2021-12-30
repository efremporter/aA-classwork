const FollowToggle = require("./follow_toggle")

$(() => {
  let buttons = $("button.follow-toggle");
  buttons.each( (index, button) => new FollowToggle(button))
})