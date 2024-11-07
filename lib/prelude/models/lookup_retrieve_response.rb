# frozen_string_literal: true

module Prelude
  module Models
    class LookupRetrieveResponse < Prelude::BaseModel
      # @!attribute [rw] carrier
      #   The carrier of the phone number.
      #   @return [String]
      optional :carrier, String

      # @!attribute [rw] country_code
      #   The ISO 3166-1 alpha-2 country code of the phone number.
      #   @return [String]
      optional :country_code, String

      # @!attribute [rw] line_type
      #   The type of phone line.
      #   * `CallingCards` - Numbers that are associated with providers of pre-paid domestic and international calling cards.
      #   * `FixedLine` - Landline phone numbers.
      #   * `InternetServiceProvider` - Numbers reserved for ISPs.
      #   * `LocalRate` - Numbers that can be assigned non-geographically.
      #   * `Mobile` - Mobile phone numbers.
      #   * `Other` - Other types of services.
      #   * `Pager` - Number ranges specifically allocated to paging devices.
      #   * `PayPhone` - Allocated numbers for payphone kiosks in some countries.
      #   * `PremiumRate` - Landline numbers where the calling party pays more than standard.
      #   * `Satellite` - Satellite phone numbers.
      #   * `Service` - Automated applications.
      #   * `SharedCost` - Specific landline ranges where the cost of making the call is shared between the calling and called party.
      #   * `ShortCodesCommercial` - Short codes are memorable, easy-to-use numbers, like the UK's NHS 111, often sold to businesses. Not available in all countries.
      #   * `TollFree` - Number where the called party pays for the cost of the call not the calling party.
      #   * `UniversalAccess` - Number ranges reserved for Universal Access initiatives.
      #   * `Unknown` - Unknown phone number type.
      #   * `VPN` - Numbers are used exclusively within a private telecommunications network, connecting the operator's terminals internally and not accessible via the public telephone network.
      #   * `VoiceMail` - A specific category of Interactive Voice Response (IVR) services.
      #   * `Voip` - Specific ranges for providers of VoIP services to allow incoming calls from the regular telephony network.
      #
      #   @return [Symbol, Prelude::Models::LookupRetrieveResponse::LineType]
      optional :line_type, enum: -> { Prelude::Models::LookupRetrieveResponse::LineType }

      # @!attribute [rw] mcc
      #   The mobile country code of the phone number.
      #   @return [String]
      optional :mcc, String

      # @!attribute [rw] mnc
      #   The mobile network code of the phone number.
      #   @return [String]
      optional :mnc, String

      # @!attribute [rw] number_ported
      #   Whether the phone number has been ported.
      #   @return [Boolean]
      optional :number_ported, Prelude::BooleanModel

      # @!attribute [rw] phone_number
      #   An E.164 formatted phone number.
      #   @return [String]
      optional :phone_number, String

      # The type of phone line.
      #   * `CallingCards` - Numbers that are associated with providers of pre-paid domestic and international calling cards.
      #   * `FixedLine` - Landline phone numbers.
      #   * `InternetServiceProvider` - Numbers reserved for ISPs.
      #   * `LocalRate` - Numbers that can be assigned non-geographically.
      #   * `Mobile` - Mobile phone numbers.
      #   * `Other` - Other types of services.
      #   * `Pager` - Number ranges specifically allocated to paging devices.
      #   * `PayPhone` - Allocated numbers for payphone kiosks in some countries.
      #   * `PremiumRate` - Landline numbers where the calling party pays more than standard.
      #   * `Satellite` - Satellite phone numbers.
      #   * `Service` - Automated applications.
      #   * `SharedCost` - Specific landline ranges where the cost of making the call is shared between the calling and called party.
      #   * `ShortCodesCommercial` - Short codes are memorable, easy-to-use numbers, like the UK's NHS 111, often sold to businesses. Not available in all countries.
      #   * `TollFree` - Number where the called party pays for the cost of the call not the calling party.
      #   * `UniversalAccess` - Number ranges reserved for Universal Access initiatives.
      #   * `Unknown` - Unknown phone number type.
      #   * `VPN` - Numbers are used exclusively within a private telecommunications network, connecting the operator's terminals internally and not accessible via the public telephone network.
      #   * `VoiceMail` - A specific category of Interactive Voice Response (IVR) services.
      #   * `Voip` - Specific ranges for providers of VoIP services to allow incoming calls from the regular telephony network.
      #
      class LineType < Prelude::Enum
        CALLING_CARDS = :CallingCards
        FIXED_LINE = :FixedLine
        INTERNET_SERVICE_PROVIDER = :InternetServiceProvider
        LOCAL_RATE = :LocalRate
        MOBILE = :Mobile
        OTHER = :Other
        PAGER = :Pager
        PAY_PHONE = :PayPhone
        PREMIUM_RATE = :PremiumRate
        SATELLITE = :Satellite
        SERVICE = :Service
        SHARED_COST = :SharedCost
        SHORT_CODES_COMMERCIAL = :ShortCodesCommercial
        TOLL_FREE = :TollFree
        UNIVERSAL_ACCESS = :UniversalAccess
        UNKNOWN = :Unknown
        VPN = :VPN
        VOICE_MAIL = :VoiceMail
        VOIP = :Voip
      end

      # @!parse
      #   # Create a new instance of LookupRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :carrier The carrier of the phone number.
      #   #   @option data [String, nil] :country_code The ISO 3166-1 alpha-2 country code of the phone number.
      #   #   @option data [String, nil] :line_type The type of phone line.
      #   #
      #   #     - `CallingCards` - Numbers that are associated with providers of pre-paid
      #   #       domestic and international calling cards.
      #   #     - `FixedLine` - Landline phone numbers.
      #   #     - `InternetServiceProvider` - Numbers reserved for ISPs.
      #   #     - `LocalRate` - Numbers that can be assigned non-geographically.
      #   #     - `Mobile` - Mobile phone numbers.
      #   #     - `Other` - Other types of services.
      #   #     - `Pager` - Number ranges specifically allocated to paging devices.
      #   #     - `PayPhone` - Allocated numbers for payphone kiosks in some countries.
      #   #     - `PremiumRate` - Landline numbers where the calling party pays more than
      #   #       standard.
      #   #     - `Satellite` - Satellite phone numbers.
      #   #     - `Service` - Automated applications.
      #   #     - `SharedCost` - Specific landline ranges where the cost of making the call is
      #   #       shared between the calling and called party.
      #   #     - `ShortCodesCommercial` - Short codes are memorable, easy-to-use numbers, like
      #   #       the UK's NHS 111, often sold to businesses. Not available in all countries.
      #   #     - `TollFree` - Number where the called party pays for the cost of the call not
      #   #       the calling party.
      #   #     - `UniversalAccess` - Number ranges reserved for Universal Access initiatives.
      #   #     - `Unknown` - Unknown phone number type.
      #   #     - `VPN` - Numbers are used exclusively within a private telecommunications
      #   #       network, connecting the operator's terminals internally and not accessible via
      #   #       the public telephone network.
      #   #     - `VoiceMail` - A specific category of Interactive Voice Response (IVR)
      #   #       services.
      #   #     - `Voip` - Specific ranges for providers of VoIP services to allow incoming
      #   #       calls from the regular telephony network.
      #   #   @option data [String, nil] :mcc The mobile country code of the phone number.
      #   #   @option data [String, nil] :mnc The mobile network code of the phone number.
      #   #   @option data [Hash, nil] :number_ported Whether the phone number has been ported.
      #   #   @option data [String, nil] :phone_number An E.164 formatted phone number.
      #   def initialize(data = {}) = super
    end
  end
end
