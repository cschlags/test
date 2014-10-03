class Nav extends App

  selectors:
    parent: '#nav'
    trigger: '#nav-open'
    list: '#nav-menu'
    caption: '#nav-open-caption'

  classes:
    active: 'active'
    out: 'out'
    solid: 'solid'

  intervals:
    out: 500

  events:
    'click #nav-open': 'handleTriggerClick'

  initialize: ->
    $(window).on 'scroll', @handleScroll.bind(@)

  handleScroll: ->
    top = $(window).scrollTop()
    if top > 400 then @$('parent').addClass(@classes.solid) else @$('parent').removeClass(@classes.solid)

  handleTriggerClick: (e, el) ->
    $(el).toggleClass @classes.active
    @$('caption').html(if $(el).hasClass(@classes.active) then 'close' else 'menu')
    if @$('list').hasClass @classes.active
      @$('list')
        .addClass @classes.out
        .removeClass @classes.active
      setTimeout (=> @$('list').removeClass(@classes.out)), @intervals.out
    else
      @$('list').addClass @classes.active

$ -> new Nav()
