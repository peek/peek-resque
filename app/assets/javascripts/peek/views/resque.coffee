$(document).on 'peek:render', (event, data) ->
  $('#resque-jobs-tooltip').attr('title', "Failures: #{data.context.resque.jobs.failures}").tipsy()
