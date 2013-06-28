# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ($) ->
  $(document).on "ready", ->
    $("#tabs").tabs()
    $("#commentTabs").tabs()
    $("#content_cards").sortable update: (event, ui) -> 
      $("#content_cards").children().each ->
        prevCount = $(this).prevAll().length + 1
        $(this).children("input[id*='position']").val(prevCount)	
    
  $(document).on 'click', 'form .remove_components', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $(document).on 'click', 'form .add_components', (event) ->
    event.preventDefault()
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $("#content_cards").append($(this).data('fields').replace(regexp, time))
    lastElement = $("#content_cards fieldset:last-child")
    prevCount = lastElement.prevAll().length+1
    lastElement.children("input[id*='position']").val(prevCount)

  $(document).on "click", ".switch_number_values_up", (event)->
    event.preventDefault()
    field = $(this).closest("fieldset")
    if field.prevAll("fieldset:visible:first").length > 0
      prev_field = field.prevAll("fieldset:visible:first")
      curr_value_container = field.find("[id*='value']")
      curr_explanation_container = field.find("[id*='explanation']")
      curr_value = curr_value_container.val()
      curr_explanation = curr_explanation_container.val()
      prev_value_container = prev_field.find("[id*='value']")
      prev_explanation_container = prev_field.find("[id*='explanation']")
      prev_value = prev_value_container.val()
      prev_explanation = prev_explanation_container.val()
      prev_value_container.val(curr_value)
      prev_explanation_container.val(curr_explanation)      
      curr_value_container.val(prev_value)
      curr_explanation_container.val(prev_explanation)      

  $(document).on "click", ".switch_number_values_down", (event)->
    event.preventDefault()
    field = $(this).closest("fieldset")
    if field.nextAll("fieldset:visible:first").length > 0
      next_field = field.nextAll("fieldset:visible:first")
      curr_value_container = field.find("[id*='value']")
      curr_explanation_container = field.find("[id*='explanation']")
      next_value_container = next_field.find("[id*='value']")
      next_explanation_container = next_field.find("[id*='explanation']")
      curr_value = curr_value_container.val()
      curr_explanation = curr_explanation_container.val()
      next_value = next_value_container.val()
      next_explanation = next_explanation_container.val()
      curr_value_container.val(next_value)
      curr_explanation_container.val(next_explanation)      
      next_value_container.val(curr_value)
      next_explanation_container.val(curr_explanation)      

  $(document).on "click", ".add_templates", (event)->
    event.preventDefault()
    temp = $(this).data("model") 
    if $("input[type='radio'][id*="+ temp + "]:checked").length > 0
      template_radio = $("input[type='radio'][id*="+ temp + "]:checked")
      time = new Date().getTime()
      regexp = new RegExp(template_radio.data('id'), 'g')
      $("#content_cards").append(template_radio.data('fields').replace(regexp, time))
      lastElement = $("#content_cards fieldset:last-child")
      prevCount = lastElement.prevAll().length+1
      lastElement.children("input[id*='position']").val(prevCount)

