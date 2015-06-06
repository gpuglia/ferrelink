$ ->
  $(".js_quantity").on "keyup", (e) ->
    base = $(this)
    parent = base.parent()

    parent.removeClass("has-error has-success")

    if (base.val() == "")
      return
    if (isMultipleOfMinimum(base))
      parent.addClass("has-success")
      enableSubmit()
    else
      parent.addClass("has-error")
      disableSubmit()

  isMultipleOfMinimum = (base)->
    input = base.val()
    minimum = parseInt(base.parent().siblings(".js_minimum").text())

    input % minimum == 0

  enableSubmit = ->
    $("input[type=submit]").removeAttr("disabled")

  disableSubmit = ->
    $("input[type=submit]").attr("disabled", "disabled")
