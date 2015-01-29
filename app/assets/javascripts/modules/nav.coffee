class Nav extends App

  selectors:
    body: 'body'
    parent: '#nav'
    trigger: '#nav-open'
    list: '#nav-menu'
    caption: '#nav-open-caption'

  classes:
    active: 'active'
    out: 'out'
    above: 'body-above'

  intervals:
    out: 500

  events:
    'click #nav-open': 'handleTriggerClick'

  initialize: ->
    @handleScroll()
    $(window).on 'scroll', @handleScroll.bind(@)

  handleScroll: ->
    top = $(window).scrollTop()
    if top > 400 then @$('body').removeClass(@classes.above) else @$('body').addClass(@classes.above)

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
