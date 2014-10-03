class window.App

	$: (name) -> $ @selectors[name]

	constructor: ->
		@bindEvents()
		@initialize() if @initialize

	bindEvents: ->
		for e, fn of @events
			match = e.match /^(\S+)\s*(.*)$/; th = @
			$(document).on match[1], match[2], (e) ->  th[fn].call th, e, @
