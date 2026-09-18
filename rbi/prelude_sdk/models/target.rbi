# typed: strong

module PreludeSDK
  module Models
    class Target < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PreludeSDK::Target, PreludeSDK::Internal::AnyHash)
        end

      # The type of the target. Either "phone_number" or "email_address".
      sig { returns(PreludeSDK::Target::Type::OrSymbol) }
      attr_accessor :type

      # An E.164 formatted phone number or an email address.
      sig { returns(String) }
      attr_accessor :value

      # The operation target. Either a phone number or an email address.
      sig do
        params(type: PreludeSDK::Target::Type::OrSymbol, value: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The type of the target. Either "phone_number" or "email_address".
        type:,
        # An E.164 formatted phone number or an email address.
        value:
      )
      end

      sig do
        override.returns(
          { type: PreludeSDK::Target::Type::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      # The type of the target. Either "phone_number" or "email_address".
      module Type
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Target::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHONE_NUMBER =
          T.let(:phone_number, PreludeSDK::Target::Type::TaggedSymbol)
        EMAIL_ADDRESS =
          T.let(:email_address, PreludeSDK::Target::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[PreludeSDK::Target::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
