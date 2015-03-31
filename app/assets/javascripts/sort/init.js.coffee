@init_sort = ->
  $('.js-sortable').sortable(
    connectWith: '.js-connected-sortable'
    placeholder: 'list-group-item sortable-placeholder'

    update: (event, ui) ->
      $this = $(this)
      console.log $this.data('sort-url')

      $.post($this.data('sort-url'), $this.sortable('serialize'))
  ).disableSelection()
  return
