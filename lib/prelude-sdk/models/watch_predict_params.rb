# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchPredictParams < PreludeSDK::BaseModel
      # @!parse
      #   extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # @!attribute target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Target]
      required :target, -> { PreludeSDK::Models::WatchPredictParams::Target }

      # @!attribute [r] signals
      #   It is highly recommended that you provide the signals to increase prediction
      #     performance.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Signals, nil]
      optional :signals, -> { PreludeSDK::Models::WatchPredictParams::Signals }

      # @!parse
      #   # @return [PreludeSDK::Models::WatchPredictParams::Signals]
      #   attr_writer :signals

      # @!parse
      #   # @param target [PreludeSDK::Models::WatchPredictParams::Target]
      #   # @param signals [PreludeSDK::Models::WatchPredictParams::Signals]
      #   # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(target:, signals: nil, request_options: {}, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      class Target < PreludeSDK::BaseModel
        # @!attribute type
        #   The type of the target. Currently this can only be "phone_number".
        #
        #   @return [Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchPredictParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number to verify.
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # The target. Currently this can only be an E.164 formatted phone number.
        #   #
        #   # @param type [Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type]
        #   # @param value [String]
        #   #
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # @abstract
        #
        # The type of the target. Currently this can only be "phone_number".
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   #
          #   def self.values; end
        end
      end

      class Signals < PreludeSDK::BaseModel
        # @!attribute [r] device_id
        #   The unique identifier for the user's device. For Android, this corresponds to
        #     the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #
        #   @return [String, nil]
        optional :device_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :device_id

        # @!attribute [r] device_model
        #   The model of the user's device.
        #
        #   @return [String, nil]
        optional :device_model, String

        # @!parse
        #   # @return [String]
        #   attr_writer :device_model

        # @!attribute [r] device_type
        #   The type of the user's device.
        #
        #   @return [String, nil]
        optional :device_type, String

        # @!parse
        #   # @return [String]
        #   attr_writer :device_type

        # @!attribute [r] ip
        #   The IPv4 address of the user's device
        #
        #   @return [String, nil]
        optional :ip, String

        # @!parse
        #   # @return [String]
        #   attr_writer :ip

        # @!parse
        #   # It is highly recommended that you provide the signals to increase prediction
        #   #   performance.
        #   #
        #   # @param device_id [String]
        #   # @param device_model [String]
        #   # @param device_type [String]
        #   # @param ip [String]
        #   #
        #   def initialize(device_id: nil, device_model: nil, device_type: nil, ip: nil, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void
      end
    end
  end
end
