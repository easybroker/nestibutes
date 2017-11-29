+(function ($) { "use strict"

  function init() {
    if ($('.dynamic-nested-fields').length) {
      initializeDynamicDelete()
      initDynamicAddLinks()
    }
  }

  function initializeDynamicDelete() {
    $('.dynamic-nested-fields').on('click', '.dynamic-delete', function(e){
      var item = $(this).closest('.dynamic-item')
      item.hide()
      item.find('input[type=text]').val('')
      item.find('select').prop('selectedIndex', '')
      item.find('textarea').html('')
      e.preventDefault()
    })
  }

  function initDynamicAddLinks() {
    $('.dynamic-add').click(function(event) {
      event.preventDefault()
      var nestedFields = $(this).siblings('.dynamic-nested-fields')
      nestedFields.append(cloneTemplate(nestedFields.find('.empty-template')))
    })
  }

  function generateRandomId() {
    return new Date().valueOf()
  }

  function cloneTemplate(template) {
    var clone = template.clone().removeClass('hidden empty-template')
    var randomId = generateRandomId()
    clone.find('input, select, textarea').each(function() {
      $(this).attr('id', '')
      var name = $(this).attr('name')
      name = name.replace(/\[\d\]/, '[' + randomId + ']')
      $(this).attr('name', name)
    })
    return clone
  }

  $(init)

})(jQuery)

