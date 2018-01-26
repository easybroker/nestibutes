+(function ($) { "use strict"

  function init() {
    if (document.getElementsByClassName('dynamic-nested-fields').length) {
      initializeDynamicDelete();
      initDynamicAddLinks();

    //Polyfills for supporting IE9+
    if (!Element.prototype.matches)
    Element.prototype.matches = Element.prototype.msMatchesSelector ||
                                Element.prototype.webkitMatchesSelector;

    if (!Element.prototype.closest)
      Element.prototype.closest = function(s) {
        var el = this;
        if (!document.documentElement.contains(el)) return null;
        do {
          if (el.matches(s)) return el;
          el = el.parentElement || el.parentNode;
        } while (el !== null && el.nodeType === 1);
        return null;
      };
    }
  }

  function initializeDynamicDelete() {
    var dynamicDeleteButtons = document.getElementsByClassName('dynamic-delete');
    [].forEach.call(dynamicDeleteButtons, function(element) {
      element.addEventListener('click', function() {
        var item = element.closest('.dynamic-item');
        item.style.display = "none";
        item.querySelector('input[type=text]').value = '';
        item.querySelector('select').selectedIndex = '';
        item.querySelector('textarea').innerHTML = '';
        event.preventDefault()
      }, false);
    });
  }

  function initDynamicAddLinks() {
    $('.data-dynamic-add').click(function(event) {
      event.preventDefault()
      var nestedFields = $(this).siblings('.dynamic-nested-fields')
      nestedFields.append(cloneTemplate(nestedFields.find('.empty-template')))
    })
  }

  function generateTemplateId() {
    return new Date().valueOf()
  }

  function cloneTemplate(template) {
    var clone = template.clone().removeClass('hidden empty-template')
    var templateId = generateTemplateId()
    clone.find('input, select, textarea').each(function() {
      $(this).attr('id', '')
      var name = $(this).attr('name')
      name = name.replace(/\[\d\]/, '[' + templateId + ']')
      $(this).attr('name', name)
    })
    return clone
  }

  $(init)

})(jQuery)
