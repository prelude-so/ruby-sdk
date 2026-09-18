# typed: strong

module PreludeSDK
  module Models
    module VerificationManagement
      class SandboxListPhoneNumbersResponse < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse,
              PreludeSDK::Internal::AnyHash
            )
          end

        # A list of sandbox phone numbers.
        sig do
          returns(
            T::Array[
              PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse::PhoneNumber
            ]
          )
        end
        attr_accessor :phone_numbers

        sig do
          params(
            phone_numbers:
              T::Array[
                PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse::PhoneNumber::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of sandbox phone numbers.
          phone_numbers:
        )
        end

        sig do
          override.returns(
            {
              phone_numbers:
                T::Array[
                  PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse::PhoneNumber
                ]
            }
          )
        end
        def to_hash
        end

        class PhoneNumber < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse::PhoneNumber,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The fixed attempt code associated with the sandbox phone number.
          sig { returns(String) }
          attr_accessor :attempt_code

          # The date and time when the phone number was added to the sandbox list.
          sig { returns(Time) }
          attr_accessor :created_at

          # An E.164 formatted phone number.
          sig { returns(String) }
          attr_accessor :phone_number

          sig do
            params(
              attempt_code: String,
              created_at: Time,
              phone_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The fixed attempt code associated with the sandbox phone number.
            attempt_code:,
            # The date and time when the phone number was added to the sandbox list.
            created_at:,
            # An E.164 formatted phone number.
            phone_number:
          )
          end

          sig do
            override.returns(
              { attempt_code: String, created_at: Time, phone_number: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
