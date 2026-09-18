# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Verification
      class Phone
        # Verify phone numbers.
        # @return [PreludeSDK::Resources::Verification::Phone::History]
        attr_reader :history

        # @api private
        #
        # @param client [PreludeSDK::Client]
        def initialize(client:)
          @client = client
          @history = PreludeSDK::Resources::Verification::Phone::History.new(client: client)
        end
      end
    end
  end
end
