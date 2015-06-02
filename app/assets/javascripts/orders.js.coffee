$ ->
  $(".js_quantity").on "change", (e) ->
    base = $(this)
    parent = base.parent()

    if (isMultipleOfMinimum(base) || base.val() == "")
      parent.addClass("has-success")
    else
      parent.addClass("has-error")

  isMultipleOfMinimum = (base)->
    input = base.val()
    minimum = parseInt(base.parent().siblings('.js_minimum').text())

    input % minimum == 0

