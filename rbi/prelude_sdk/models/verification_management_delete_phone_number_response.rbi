# typed: strong

module PreludeSDK
  module Models
    class VerificationManagementDeletePhoneNumberResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::VerificationManagementDeletePhoneNumberResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The E.164 formatted phone number that was removed from the list.
      sig { returns(String) }
      attr_accessor :phone_number

      sig { params(phone_number: String).returns(T.attached_class) }
      def self.new(
        # The E.164 formatted phone number that was removed from the list.
        phone_number:
      )
      end

      sig { override.returns({ phone_number: String }) }
      def to_hash
      end
    end
  end
end
