$(document).on 'glimpse:update', ->
  resqueContext = $('#glimpse-context-resque')
  if resqueContext.size()
    context = resqueContext.data('context')
    failures = context.jobs.failures
    $('#resque-jobs-tooltip').attr('title', "Failures: #{failures}").tipsy()
