# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchFeedBackParams < PreludeSDK::BaseModel
      # @!attribute feedback
      #   You should send a feedback event back to Watch API when your user demonstrates authentic behavior.
      #
      #   @return [PreludeSDK::Models::WatchFeedBackParams::Feedback]
      required :feedback, -> { PreludeSDK::Models::WatchFeedBackParams::Feedback }

      # @!attribute target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @return [PreludeSDK::Models::WatchFeedBackParams::Target]
      required :target, -> { PreludeSDK::Models::WatchFeedBackParams::Target }

      # @!parse
      #   # @param feedback [PreludeSDK::Models::WatchFeedBackParams::Feedback] You should send a feedback event back to Watch API when your user demonstrates
      #   #   authentic behavior.
      #   #
      #   # @param target [PreludeSDK::Models::WatchFeedBackParams::Target] The target. Currently this can only be an E.164 formatted phone number.
      #   #
      #   def initialize(feedback:, target:, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # @example
      # ```ruby
      # feedback => {
      #   type: enum: PreludeSDK::Models::WatchFeedBackParams::Feedback::Type
      # }
      # ```
      class Feedback < PreludeSDK::BaseModel
        # @!attribute type
        #   `CONFIRM_TARGET` should be sent when you are sure that the user with this target (e.g. phone number) is trustworthy.
        #
        #   @return [Symbol, PreludeSDK::Models::WatchFeedBackParams::Feedback::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchFeedBackParams::Feedback::Type }

        # @!parse
        #   # You should send a feedback event back to Watch API when your user demonstrates
        #   #   authentic behavior.
        #   #
        #   # @param type [String] `CONFIRM_TARGET` should be sent when you are sure that the user with this target
        #   #   (e.g. phone number) is trustworthy.
        #   #
        #   def initialize(type:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # `CONFIRM_TARGET` should be sent when you are sure that the user with this target (e.g. phone number) is trustworthy.
        #
        # @example
        # ```ruby
        # case type
        # in :CONFIRM_TARGET
        #   # ...
        # end
        # ```
        class Type < PreludeSDK::Enum
          CONFIRM_TARGET = :CONFIRM_TARGET

          finalize!
        end
      end

      # @example
      # ```ruby
      # target => {
      #   type: enum: PreludeSDK::Models::WatchFeedBackParams::Target::Type,
      #   value: String
      # }
      # ```
      class Target < PreludeSDK::BaseModel
        # @!attribute type
        #   The type of the target. Currently this can only be "phone_number".
        #
        #   @return [Symbol, PreludeSDK::Models::WatchFeedBackParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchFeedBackParams::Target::Type }

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
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the target. Currently this can only be "phone_number".
        #
        # @example
        # ```ruby
        # case type
        # in :phone_number
        #   # ...
        # end
        # ```
        class Type < PreludeSDK::Enum
          PHONE_NUMBER = :phone_number

          finalize!
        end
      end
    end
  end
end
