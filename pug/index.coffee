tinggi = ->
  $("textarea").css "height", $(window).height() * 0.5
tinggi()
$(window).on "resize", ->
  tinggi()
app = new Vue
  el: ".vue"
  data:
    input: null
    output: null
  watch:
    input: ->
      @output = @input.replace /[aiueo]/gi, "i"