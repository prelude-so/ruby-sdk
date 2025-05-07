# typed: strong

module PreludeSDK
  module Models
    class LookupLookupParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(T.self_type, PreludeSDK::Internal::AnyHash) }

      # Optional features. Possible values are:
      #
      # - `cnam` - Retrieve CNAM (Caller ID Name) along with other information. Contact
      #   us if you need to use this functionality.
      sig do
        returns(
          T.nilable(T::Array[PreludeSDK::LookupLookupParams::Type::OrSymbol])
        )
      end
      attr_reader :type

      sig do
        params(
          type: T::Array[PreludeSDK::LookupLookupParams::Type::OrSymbol]
        ).void
      end
      attr_writer :type

      sig do
        params(
          type: T::Array[PreludeSDK::LookupLookupParams::Type::OrSymbol],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Optional features. Possible values are:
        #
        # - `cnam` - Retrieve CNAM (Caller ID Name) along with other information. Contact
        #   us if you need to use this functionality.
        type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            type: T::Array[PreludeSDK::LookupLookupParams::Type::OrSymbol],
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Type
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, PreludeSDK::LookupLookupParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CNAM = T.let(:cnam, PreludeSDK::LookupLookupParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[PreludeSDK::LookupLookupParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
