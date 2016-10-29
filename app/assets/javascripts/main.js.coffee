$ ->
  init_autosize() if $('.js-textarea-autosize').length
  init_tabs() if $('.js-nav-tabs').length
  init_sort() if $('.js-sortable').length
  init_select()
