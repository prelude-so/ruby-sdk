# typed: strong

module PreludeSDK
  module Models
    class VerificationManagementListPhoneNumbersParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::VerificationManagementListPhoneNumbersParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      sig do
        params(request_options: PreludeSDK::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: PreludeSDK::RequestOptions }) }
      def to_hash
      end

      module Action
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::VerificationManagementListPhoneNumbersParams::Action
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALLOW =
          T.let(
            :allow,
            PreludeSDK::VerificationManagementListPhoneNumbersParams::Action::TaggedSymbol
          )
        BLOCK =
          T.let(
            :block,
            PreludeSDK::VerificationManagementListPhoneNumbersParams::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::VerificationManagementListPhoneNumbersParams::Action::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
