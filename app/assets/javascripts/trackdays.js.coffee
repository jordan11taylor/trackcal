$ ->
  $("#filter-bar").waypoint (direction) ->
    if direction is "down"
      $(".magellan").removeClass("high-opacity")

  $("#filter-bar").waypoint (direction) ->
    if direction is "up"
      $(".magellan").addClass("high-opacity")

  $("#magellan select").change ->
    $(@).closest("form").submit()
