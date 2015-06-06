$ ->
  popover = $('[data-toggle="popover"]')
  popover.popover
    placement: 'right'
    trigger: 'manual'

  $(".js_quantity").on "keyup", (e) ->
    base = $(this)
    parent = base.parent()

    parent.removeClass("has-error has-success")

    if (base.val() == "")
      base.popover('hide')
    else if (isMultipleOfMinimum(base))
      parent.addClass("has-success")
      base.popover('hide')
      enableSubmit()
    else
      parent.addClass("has-error")
      base.popover('show')
      disableSubmit()

  isMultipleOfMinimum = (base)->
    input = base.val()
    minimum = parseInt(base.parent().siblings(".js_minimum").text())

    input % minimum == 0

  enableSubmit = ->
    $("input[type=submit]").removeAttr("disabled")

  disableSubmit = ->
    $("input[type=submit]").attr("disabled", "disabled")
