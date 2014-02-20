require 'tilt'
require 'myth'

module Myth
  module Rails
    # Myth template implementation. See:
    # http://myth.io/
    #
    # Myth templates do not support object scopes, locals, or yield.
    class MythTemplate < ::Tilt::Template
      self.default_mime_type = 'text/css'

      def prepare
      end

      def evaluate(scope, locals, &block)
        @output ||= ::Myth.preprocess(data, options)
      end

      def allows_script?
        false
      end
    end
  end
end