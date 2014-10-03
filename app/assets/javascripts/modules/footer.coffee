class Footer extends App

  selectors:
    email: '#email'
    emailLabel: '#email-label'

  events:
    'input #email': 'handleEmailInput'

  handleEmailInput: (e, el) ->
    value = $(el).val()
    if value.length
      @$('emailLabel').addClass @classes.hide
    else
      @$('emailLabel').removeClass @classes.hide

$ -> new Footer()
