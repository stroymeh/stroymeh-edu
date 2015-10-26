@init_select = ->
  if $('.js-select-tags').length
    $('.js-select-tags').select2
      tags: true
      tokenSeparators: [',', ' ']

  if $('.js-select').length
    $('.js-select').select2
      maximumSelectionLength: 2
