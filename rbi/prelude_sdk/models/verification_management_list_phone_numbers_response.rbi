# typed: strong

module PreludeSDK
  module Models
    class VerificationManagementListPhoneNumbersResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # A list of phone numbers in the allow or block list.
      sig do
        returns(
          T::Array[
            PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse::PhoneNumber
          ]
        )
      end
      attr_accessor :phone_numbers

      sig do
        params(
          phone_numbers:
            T::Array[
              PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse::PhoneNumber::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of phone numbers in the allow or block list.
        phone_numbers:
      )
      end

      sig do
        override.returns(
          {
            phone_numbers:
              T::Array[
                PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse::PhoneNumber
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
              PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse::PhoneNumber,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The date and time when the phone number was added to the list.
        sig { returns(Time) }
        attr_accessor :created_at

        # An E.164 formatted phone number.
        sig { returns(String) }
        attr_accessor :phone_number

        sig do
          params(created_at: Time, phone_number: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The date and time when the phone number was added to the list.
          created_at:,
          # An E.164 formatted phone number.
          phone_number:
        )
        end

        sig { override.returns({ created_at: Time, phone_number: String }) }
        def to_hash
        end
      end
    end
  end
end
