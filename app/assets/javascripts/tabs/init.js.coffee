@init_tabs = ->
  $('.js-nav-tabs a:first').tab('show')

  hash = window.location.hash
  console.log hash

  hash and $('.js-nav-tabs a[href="' + hash + '"]').tab('show')
