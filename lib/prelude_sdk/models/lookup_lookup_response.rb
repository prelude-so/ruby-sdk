# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Lookup#lookup
    class LookupLookupResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute caller_name
      #   The CNAM (Caller ID Name) associated with the phone number. Contact us if you
      #   need to use this functionality. Once enabled, put `cnam` option to `type` query
      #   parameter.
      #
      #   @return [String, nil]
      optional :caller_name, String

      # @!attribute country_code
      #   The country code of the phone number.
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute flags
      #   A list of flags associated with the phone number.
      #
      #   - `ported` - Indicates the phone number has been transferred from one carrier to
      #     another.
      #   - `temporary` - Indicates the phone number is likely a temporary or virtual
      #     number, often used for verification services or burner phones.
      #
      #   @return [Array<Symbol, PreludeSDK::Models::LookupLookupResponse::Flag>, nil]
      optional :flags,
               -> { PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::Models::LookupLookupResponse::Flag] }

      # @!attribute line_type
      #   The type of phone line.
      #
      #   - `calling_cards` - Numbers that are associated with providers of pre-paid
      #     domestic and international calling cards.
      #   - `fixed_line` - Landline phone numbers.
      #   - `isp` - Numbers reserved for Internet Service Providers.
      #   - `local_rate` - Numbers that can be assigned non-geographically.
      #   - `mobile` - Mobile phone numbers.
      #   - `other` - Other types of services.
      #   - `pager` - Number ranges specifically allocated to paging devices.
      #   - `payphone` - Allocated numbers for payphone kiosks in some countries.
      #   - `premium_rate` - Landline numbers where the calling party pays more than
      #     standard.
      #   - `satellite` - Satellite phone numbers.
      #   - `service` - Automated applications.
      #   - `shared_cost` - Specific landline ranges where the cost of making the call is
      #     shared between the calling and called party.
      #   - `short_codes_commercial` - Short codes are memorable, easy-to-use numbers,
      #     like the UK's NHS 111, often sold to businesses. Not available in all
      #     countries.
      #   - `toll_free` - Number where the called party pays for the cost of the call not
      #     the calling party.
      #   - `universal_access` - Number ranges reserved for Universal Access initiatives.
      #   - `unknown` - Unknown phone number type.
      #   - `vpn` - Numbers are used exclusively within a private telecommunications
      #     network, connecting the operator's terminals internally and not accessible via
      #     the public telephone network.
      #   - `voice_mail` - A specific category of Interactive Voice Response (IVR)
      #     services.
      #   - `voip` - Specific ranges for providers of VoIP services to allow incoming
      #     calls from the regular telephony network.
      #
      #   @return [Symbol, PreludeSDK::Models::LookupLookupResponse::LineType, nil]
      optional :line_type, enum: -> { PreludeSDK::Models::LookupLookupResponse::LineType }

      # @!attribute network_info
      #   The current carrier information.
      #
      #   @return [PreludeSDK::Models::LookupLookupResponse::NetworkInfo, nil]
      optional :network_info, -> { PreludeSDK::Models::LookupLookupResponse::NetworkInfo }

      # @!attribute original_network_info
      #   The original carrier information.
      #
      #   @return [PreludeSDK::Models::LookupLookupResponse::OriginalNetworkInfo, nil]
      optional :original_network_info, -> { PreludeSDK::Models::LookupLookupResponse::OriginalNetworkInfo }

      # @!attribute phone_number
      #   The phone number.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!method initialize(caller_name: nil, country_code: nil, flags: nil, line_type: nil, network_info: nil, original_network_info: nil, phone_number: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::LookupLookupResponse} for more details.
      #
      #   @param caller_name [String] The CNAM (Caller ID Name) associated with the phone number. Contact us if you ne
      #
      #   @param country_code [String] The country code of the phone number.
      #
      #   @param flags [Array<Symbol, PreludeSDK::Models::LookupLookupResponse::Flag>] A list of flags associated with the phone number.
      #
      #   @param line_type [Symbol, PreludeSDK::Models::LookupLookupResponse::LineType] The type of phone line.
      #
      #   @param network_info [PreludeSDK::Models::LookupLookupResponse::NetworkInfo] The current carrier information.
      #
      #   @param original_network_info [PreludeSDK::Models::LookupLookupResponse::OriginalNetworkInfo] The original carrier information.
      #
      #   @param phone_number [String] The phone number.

      module Flag
        extend PreludeSDK::Internal::Type::Enum

        PORTED = :ported
        TEMPORARY = :temporary

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of phone line.
      #
      # - `calling_cards` - Numbers that are associated with providers of pre-paid
      #   domestic and international calling cards.
      # - `fixed_line` - Landline phone numbers.
      # - `isp` - Numbers reserved for Internet Service Providers.
      # - `local_rate` - Numbers that can be assigned non-geographically.
      # - `mobile` - Mobile phone numbers.
      # - `other` - Other types of services.
      # - `pager` - Number ranges specifically allocated to paging devices.
      # - `payphone` - Allocated numbers for payphone kiosks in some countries.
      # - `premium_rate` - Landline numbers where the calling party pays more than
      #   standard.
      # - `satellite` - Satellite phone numbers.
      # - `service` - Automated applications.
      # - `shared_cost` - Specific landline ranges where the cost of making the call is
      #   shared between the calling and called party.
      # - `short_codes_commercial` - Short codes are memorable, easy-to-use numbers,
      #   like the UK's NHS 111, often sold to businesses. Not available in all
      #   countries.
      # - `toll_free` - Number where the called party pays for the cost of the call not
      #   the calling party.
      # - `universal_access` - Number ranges reserved for Universal Access initiatives.
      # - `unknown` - Unknown phone number type.
      # - `vpn` - Numbers are used exclusively within a private telecommunications
      #   network, connecting the operator's terminals internally and not accessible via
      #   the public telephone network.
      # - `voice_mail` - A specific category of Interactive Voice Response (IVR)
      #   services.
      # - `voip` - Specific ranges for providers of VoIP services to allow incoming
      #   calls from the regular telephony network.
      #
      # @see PreludeSDK::Models::LookupLookupResponse#line_type
      module LineType
        extend PreludeSDK::Internal::Type::Enum

        CALLING_CARDS = :calling_cards
        FIXED_LINE = :fixed_line
        ISP = :isp
        LOCAL_RATE = :local_rate
        MOBILE = :mobile
        OTHER = :other
        PAGER = :pager
        PAYPHONE = :payphone
        PREMIUM_RATE = :premium_rate
        SATELLITE = :satellite
        SERVICE = :service
        SHARED_COST = :shared_cost
        SHORT_CODES_COMMERCIAL = :short_codes_commercial
        TOLL_FREE = :toll_free
        UNIVERSAL_ACCESS = :universal_access
        UNKNOWN = :unknown
        VPN = :vpn
        VOICE_MAIL = :voice_mail
        VOIP = :voip

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see PreludeSDK::Models::LookupLookupResponse#network_info
      class NetworkInfo < PreludeSDK::Internal::Type::BaseModel
        # @!attribute carrier_name
        #   The name of the carrier.
        #
        #   @return [String, nil]
        optional :carrier_name, String

        # @!attribute mcc
        #   Mobile Country Code.
        #
        #   @return [String, nil]
        optional :mcc, String

        # @!attribute mnc
        #   Mobile Network Code.
        #
        #   @return [String, nil]
        optional :mnc, String

        # @!method initialize(carrier_name: nil, mcc: nil, mnc: nil)
        #   The current carrier information.
        #
        #   @param carrier_name [String] The name of the carrier.
        #
        #   @param mcc [String] Mobile Country Code.
        #
        #   @param mnc [String] Mobile Network Code.
      end

      # @see PreludeSDK::Models::LookupLookupResponse#original_network_info
      class OriginalNetworkInfo < PreludeSDK::Internal::Type::BaseModel
        # @!attribute carrier_name
        #   The name of the original carrier.
        #
        #   @return [String, nil]
        optional :carrier_name, String

        # @!attribute mcc
        #   Mobile Country Code.
        #
        #   @return [String, nil]
        optional :mcc, String

        # @!attribute mnc
        #   Mobile Network Code.
        #
        #   @return [String, nil]
        optional :mnc, String

        # @!method initialize(carrier_name: nil, mcc: nil, mnc: nil)
        #   The original carrier information.
        #
        #   @param carrier_name [String] The name of the original carrier.
        #
        #   @param mcc [String] Mobile Country Code.
        #
        #   @param mnc [String] Mobile Network Code.
      end
    end
  end
end
