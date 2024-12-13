# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchFeedBackParams < PreludeSDK::BaseModel
      # @!attribute [rw] feedback
      #   You should send a feedback event back to Watch API when your user demonstrates authentic behavior.
      #   @return [PreludeSDK::Models::WatchFeedBackParams::Feedback]
      required :feedback, -> { PreludeSDK::Models::WatchFeedBackParams::Feedback }

      # @!attribute [rw] target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #   @return [PreludeSDK::Models::WatchFeedBackParams::Target]
      required :target, -> { PreludeSDK::Models::WatchFeedBackParams::Target }

      class Feedback < PreludeSDK::BaseModel
        # @!attribute [rw] type
        #   `CONFIRM_TARGET` should be sent when you are sure that the user with this target (e.g. phone number) is trustworthy.
        #   @return [Symbol, PreludeSDK::Models::WatchFeedBackParams::Feedback::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchFeedBackParams::Feedback::Type }

        # `CONFIRM_TARGET` should be sent when you are sure that the user with this target (e.g. phone number) is trustworthy.
        class Type < PreludeSDK::Enum
          CONFIRM_TARGET = :CONFIRM_TARGET
        end

        # @!parse
        #   # Create a new instance of Feedback from a Hash of raw data.
        #   #
        #   # @param data [Hash{Symbol => Object}] .
        #   #   @option data [String] :type `CONFIRM_TARGET` should be sent when you are sure that the user with this target
        #   #     (e.g. phone number) is trustworthy.
        #   def initialize(data = {}) = super
      end

      class Target < PreludeSDK::BaseModel
        # @!attribute [rw] type
        #   The type of the target. Currently this can only be "phone_number".
        #   @return [Symbol, PreludeSDK::Models::WatchFeedBackParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchFeedBackParams::Target::Type }

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
    end
  end
end
