$ ->
  $(".js_quantity").on "change", (e) ->
    base = $(this).closest("form-group")
    if (isMultipleOfMinimum)
      base.addClass("has-success")
    else
      base.addClass("has-error")

  isMultipleOfMinimum = (base)->
    input = base.val()
    minimum = parseInt(base.closest(".js_minimum").text())

