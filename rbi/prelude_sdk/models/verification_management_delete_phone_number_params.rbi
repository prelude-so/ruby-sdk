# typed: strong

module PreludeSDK
  module Models
    class VerificationManagementDeletePhoneNumberParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::VerificationManagementDeletePhoneNumberParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # An E.164 formatted phone number to remove from the list.
      sig { returns(String) }
      attr_accessor :phone_number

      sig do
        params(
          phone_number: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # An E.164 formatted phone number to remove from the list.
        phone_number:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { phone_number: String, request_options: PreludeSDK::RequestOptions }
        )
      end
      def to_hash
      end

      module Action
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::VerificationManagementDeletePhoneNumberParams::Action
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALLOW =
          T.let(
            :allow,
            PreludeSDK::VerificationManagementDeletePhoneNumberParams::Action::TaggedSymbol
          )
        BLOCK =
          T.let(
            :block,
            PreludeSDK::VerificationManagementDeletePhoneNumberParams::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::VerificationManagementDeletePhoneNumberParams::Action::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
