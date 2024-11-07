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
      class LineType < Prelude::Enum
        FIXED_LINE = :FixedLine
        MOBILE = :Mobile
        TOLL_FREE = :TollFree
        PREMIUM_RATE = :PremiumRate
        SHARED_COST = :SharedCost
        VOIP = :Voip
        PAGER = :Pager
        VOICE_MAIL = :VoiceMail
        UNIVERSAL_ACCESS = :UniversalAccess
        SERVICE = :Service
        UNKNOWN = :Unknown
      end

      # @!parse
      #   # Create a new instance of LookupRetrieveResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :carrier The carrier of the phone number.
      #   #   @option data [String, nil] :country_code The ISO 3166-1 alpha-2 country code of the phone number.
      #   #   @option data [String, nil] :line_type The type of phone line.
      #   #   @option data [String, nil] :mcc The mobile country code of the phone number.
      #   #   @option data [String, nil] :mnc The mobile network code of the phone number.
      #   #   @option data [Hash, nil] :number_ported Whether the phone number has been ported.
      #   #   @option data [String, nil] :phone_number An E.164 formatted phone number.
      #   def initialize(data = {}) = super
    end
  end
end
