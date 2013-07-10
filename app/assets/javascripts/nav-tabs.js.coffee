$(document).ready ->
  $("nav.pills li:not(.active)").each ->
    $("section[name=" + $(this).data("section-name") + "]").css("display", "none")

  $("nav.pills a").click (e) ->
    old_active = $("nav.pills li.active")
    old_active.removeClass("active")
    $("section[name=" + old_active.data("section-name") + "]").css("display", "none")
    
    new_active = $(this).parent("li")
    new_active.addClass("active")
    $("section[name=" + new_active.data("section-name") + "]").css("display", "block")