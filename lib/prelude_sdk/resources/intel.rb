# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Intel
      # Retrieve detailed information about a phone number including carrier data, line
      # type, and portability status.
      # @return [PreludeSDK::Resources::Intel::KYC]
      attr_reader :kyc

      # @api private
      #
      # @param client [PreludeSDK::Client]
      def initialize(client:)
        @client = client
        @kyc = PreludeSDK::Resources::Intel::KYC.new(client: client)
      end
    end
  end
end
