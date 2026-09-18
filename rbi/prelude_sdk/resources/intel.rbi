# typed: strong

module PreludeSDK
  module Resources
    class Intel
      # Retrieve detailed information about a phone number including carrier data, line
      # type, and portability status.
      sig { returns(PreludeSDK::Resources::Intel::KYC) }
      attr_reader :kyc

      # @api private
      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
