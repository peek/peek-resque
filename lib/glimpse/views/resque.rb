require 'resque'

module Glimpse
  module Views
    class Resque < View
      def initialize(options = {})
        @queues = options.fetch(:queues, ['*'])
      end

      def job_count
        @queues.collect { |queue| ::Resque.size(queue) }.inject(&:+)
      end

      def context
        {
          :jobs => {
            :failures => ::Resque::Failure.count
          }
        }
      end

      def results
        { :jobs => job_count, :workers => ::Resque.workers.size }
      end
    end
  end
end
