# typed: strong

module PreludeSDK
  module Models
    class LookupLookupParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # Optional features. Possible values are:
      #
      # - `cnam` - Retrieve CNAM (Caller ID Name) along with other information. Contact
      #   us if you need to use this functionality.
      sig { returns(T.nilable(T::Array[PreludeSDK::Models::LookupLookupParams::Type::OrSymbol])) }
      attr_reader :type

      sig { params(type: T::Array[PreludeSDK::Models::LookupLookupParams::Type::OrSymbol]).void }
      attr_writer :type

      sig do
        params(
          type: T::Array[PreludeSDK::Models::LookupLookupParams::Type::OrSymbol],
          request_options: T.any(PreludeSDK::RequestOptions, PreludeSDK::Internal::AnyHash)
        )
          .returns(T.attached_class)
      end
      def self.new(type: nil, request_options: {}); end

      sig do
        override
          .returns(
            {
              type: T::Array[PreludeSDK::Models::LookupLookupParams::Type::OrSymbol],
              request_options: PreludeSDK::RequestOptions
            }
          )
      end
      def to_hash; end

      module Type
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::LookupLookupParams::Type) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, PreludeSDK::Models::LookupLookupParams::Type::TaggedSymbol) }

        CNAM = T.let(:cnam, PreludeSDK::Models::LookupLookupParams::Type::TaggedSymbol)

        sig { override.returns(T::Array[PreludeSDK::Models::LookupLookupParams::Type::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
