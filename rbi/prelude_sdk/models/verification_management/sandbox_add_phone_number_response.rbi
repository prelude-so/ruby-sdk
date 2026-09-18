# typed: strong

module PreludeSDK
  module Models
    module VerificationManagement
      class SandboxAddPhoneNumberResponse < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::VerificationManagement::SandboxAddPhoneNumberResponse,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The fixed attempt code associated with the sandbox phone number.
        sig { returns(String) }
        attr_accessor :attempt_code

        # The E.164 formatted phone number that was added to the sandbox list.
        sig { returns(String) }
        attr_accessor :phone_number

        sig do
          params(attempt_code: String, phone_number: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The fixed attempt code associated with the sandbox phone number.
          attempt_code:,
          # The E.164 formatted phone number that was added to the sandbox list.
          phone_number:
        )
        end

        sig { override.returns({ attempt_code: String, phone_number: String }) }
        def to_hash
        end
      end
    end
  end
end
