# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchPredictParams < PreludeSDK::BaseModel
      # @!attribute [rw] target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #   @return [PreludeSDK::Models::WatchPredictParams::Target]
      required :target, -> { PreludeSDK::Models::WatchPredictParams::Target }

      # @!attribute [rw] signals
      #   It is highly recommended that you provide the signals to increase prediction performance.
      #   @return [PreludeSDK::Models::WatchPredictParams::Signals]
      optional :signals, -> { PreludeSDK::Models::WatchPredictParams::Signals }

      class Target < PreludeSDK::BaseModel
        # @!attribute [rw] type
        #   The type of the target. Currently this can only be "phone_number".
        #   @return [Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchPredictParams::Target::Type }

        # @!attribute [rw] value
        #   An E.164 formatted phone number to verify.
        #   @return [String]
        required :value, String

        # The type of the target. Currently this can only be "phone_number".
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number
        end

        # @!parse
        #   # Create a new instance of Target from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :type The type of the target. Currently this can only be "phone_number".
        #   #   @option data [String] :value An E.164 formatted phone number to verify.
        #   def initialize(data = {}) = super
      end

      class Signals < PreludeSDK::BaseModel
        # @!attribute [rw] device_id
        #   The unique identifier for the user's device. For Android, this corresponds to the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   @return [String]
        optional :device_id, String

        # @!attribute [rw] device_model
        #   The model of the user's device.
        #   @return [String]
        optional :device_model, String

        # @!attribute [rw] device_type
        #   The type of the user's device.
        #   @return [String]
        optional :device_type, String

        # @!attribute [rw] ip
        #   The IPv4 address of the user's device
        #   @return [String]
        optional :ip, String

        # @!parse
        #   # Create a new instance of Signals from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String, nil] :device_id The unique identifier for the user's device. For Android, this corresponds to
        #   #     the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        #   #   @option data [String, nil] :device_model The model of the user's device.
        #   #   @option data [String, nil] :device_type The type of the user's device.
        #   #   @option data [String, nil] :ip The IPv4 address of the user's device
        #   def initialize(data = {}) = super
      end
    end
  end
end
