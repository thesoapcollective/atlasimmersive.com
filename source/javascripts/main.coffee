$slideContainer = null

numSlides = 0
currentSlide = 0

$(document).ready ->
  $slideContainer = $('.slide-container')
  numSlides = $('.slide').length - 1
  setArrowContainerVisibilty()

  $('.arrow-container-left').click (event) ->
    event.preventDefault()

    if currentSlide > 0
      currentSlide--
      $slideContainer.attr 'data-active-slide', currentSlide
      setArrowContainerVisibilty()

  $('.arrow-container-right').click (event) ->
    event.preventDefault()

    if currentSlide < numSlides
      currentSlide++
      $slideContainer.attr 'data-active-slide', currentSlide
      setArrowContainerVisibilty()

  $('.mailchimp-container .button').hover ->
    $('.mailchimp-container').addClass 'is-hovering'
  , ->
    $('.mailchimp-container').removeClass 'is-hovering'

setArrowContainerVisibilty = ->
  $('.arrow-container-left').toggleClass('arrow-container-active', currentSlide > 0)
  $('.arrow-container-right').toggleClass('arrow-container-active', currentSlide < numSlides)
