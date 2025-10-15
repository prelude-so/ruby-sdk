# typed: strong

module PreludeSDK
  module Models
    class VerificationManagementSubmitSenderIDParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::VerificationManagementSubmitSenderIDParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The sender ID to add.
      sig { returns(String) }
      attr_accessor :sender_id

      sig do
        params(
          sender_id: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The sender ID to add.
        sender_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { sender_id: String, request_options: PreludeSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
