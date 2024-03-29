# frozen_string_literal: true

module OneSignal
  module Rails
    module Plugin
      ##
      # Provides a custom exception for when OneSignal is unable to deliver a mail.
      class DeliveryError < StandardError
        # The response from the OneSignal API, if a response exists.
        attr_reader :response

        def initialize(msg = 'OneSignal Delivery Error', response = nil)
          @response = response
          super(msg)
        end
      end
    end
  end
end
