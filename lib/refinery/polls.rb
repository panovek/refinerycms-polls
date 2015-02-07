require 'refinerycms-core'

module Refinery
  autoload :PollsGenerator, 'generators/refinery/polls_generator'

  module Polls
    require 'refinery/polls/engine'
    require 'refinery/polls/configuration'
    class << self
      attr_writer :root

      def root
        @root ||= Pathname.new(File.expand_path('../../../', __FILE__))
      end

      def factory_paths
        @factory_paths ||= [ root.join('spec', 'factories').to_s ]
      end
    end
  end
end
