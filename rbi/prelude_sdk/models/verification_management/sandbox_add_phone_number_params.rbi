# typed: strong

module PreludeSDK
  module Models
    module VerificationManagement
      class SandboxAddPhoneNumberParams < PreludeSDK::Internal::Type::BaseModel
        extend PreludeSDK::Internal::Type::RequestParameters::Converter
        include PreludeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationManagement::SandboxAddPhoneNumberParams,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The fixed attempt code that will validate verification attempts for this phone
        # number.
        sig { returns(String) }
        attr_accessor :attempt_code

        # An E.164 formatted phone number to add to the sandbox list.
        sig { returns(String) }
        attr_accessor :phone_number

        sig do
          params(
            attempt_code: String,
            phone_number: String,
            request_options: PreludeSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The fixed attempt code that will validate verification attempts for this phone
          # number.
          attempt_code:,
          # An E.164 formatted phone number to add to the sandbox list.
          phone_number:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              attempt_code: String,
              phone_number: String,
              request_options: PreludeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
