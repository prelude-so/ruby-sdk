# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Lookup#lookup
    class LookupLookupParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute phone_number
      #   An E.164 formatted phone number to look up.
      #
      #   @return [String]
      required :phone_number, String

      # @!attribute type
      #   Optional features. Possible values are:
      #
      #   - `cnam` - Retrieve CNAM (Caller ID Name) along with other information. Contact
      #     us if you need to use this functionality.
      #
      #   @return [Array<Symbol, PreludeSDK::Models::LookupLookupParams::Type>, nil]
      optional :type, -> { PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::LookupLookupParams::Type] }

      # @!method initialize(phone_number:, type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::LookupLookupParams} for more details.
      #
      #   @param phone_number [String] An E.164 formatted phone number to look up.
      #
      #   @param type [Array<Symbol, PreludeSDK::Models::LookupLookupParams::Type>] Optional features. Possible values are:
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      module Type
        extend PreludeSDK::Internal::Type::Enum

        CNAM = :cnam

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
