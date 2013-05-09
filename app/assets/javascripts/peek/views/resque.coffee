$(document).on 'peek:render', (event, request_id, data) ->
  $('#resque-jobs-tooltip')
    .attr('title', "Failures: #{data.context.resque.jobs.failures}")
    .tipsy gravity: $.fn.tipsy.autoNS
