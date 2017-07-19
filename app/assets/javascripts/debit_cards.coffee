# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on "turbolinks:load", ->
  $('#debit_card_account_id').parent().hide()
  accounts = $('#debit_card_account_id').html()
  $('#debit_card_customer_id').change ->
    customer = $('#debit_card_customer_id :selected').text()
    options = $(accounts).filter("optgroup[label='#{customer}']").html()
    if options
      $('#debit_card_account_id').html(options)
      $('#debit_card_account_id').parent().show()
    else
      $('#debit_card_account_id').empty()
      $('#debit_card_account_id').parent().hide()