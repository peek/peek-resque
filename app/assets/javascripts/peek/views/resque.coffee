$(document).on 'peek:update', ->
  resqueContext = $('#peek-context-resque')
  if resqueContext.size()
    context = resqueContext.data('context')
    failures = context.jobs.failures
    $('#resque-jobs-tooltip').attr('title', "Failures: #{failures}").tipsy()
