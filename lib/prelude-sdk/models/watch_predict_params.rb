# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchPredictParams < PreludeSDK::BaseModel
      # @!attribute target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Target]
      required :target, -> { PreludeSDK::Models::WatchPredictParams::Target }

      # @!attribute signals
      #   It is highly recommended that you provide the signals to increase prediction performance.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Signals]
      optional :signals, -> { PreludeSDK::Models::WatchPredictParams::Signals }

      # @!parse
      #   # @param target [PreludeSDK::Models::WatchPredictParams::Target] The target. Currently this can only be an E.164 formatted phone number.
      #   #
      #   # @param signals [PreludeSDK::Models::WatchPredictParams::Signals, nil] It is highly recommended that you provide the signals to increase prediction
      #   #   performance.
      #   #
      #   def initialize(target:, signals: nil) = super

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
        #   # @param type [String] The type of the target. Currently this can only be "phone_number".
        #   #
        #   # @param value [String] An E.164 formatted phone number to verify.
        #   #
        #   def initialize(type:, value:) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the target. Currently this can only be "phone_number".
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number
        end
      end

      class Signals < PreludeSDK::BaseModel
        # @!attribute device_id
        #   The unique identifier for the user's device. For Android, this corresponds to the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #
        #   @return [String]
        optional :device_id, String

        # @!attribute device_model
        #   The model of the user's device.
        #
        #   @return [String]
        optional :device_model, String

        # @!attribute device_type
        #   The type of the user's device.
        #
        #   @return [String]
        optional :device_type, String

        # @!attribute ip
        #   The IPv4 address of the user's device
        #
        #   @return [String]
        optional :ip, String

        # @!parse
        #   # It is highly recommended that you provide the signals to increase prediction
        #   #   performance.
        #   #
        #   # @param device_id [String, nil] The unique identifier for the user's device. For Android, this corresponds to
        #   #   the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   #
        #   # @param device_model [String, nil] The model of the user's device.
        #   #
        #   # @param device_type [String, nil] The type of the user's device.
        #   #
        #   # @param ip [String, nil] The IPv4 address of the user's device
        #   #
        #   def initialize(device_id: nil, device_model: nil, device_type: nil, ip: nil) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void
      end
    end
  end
end
