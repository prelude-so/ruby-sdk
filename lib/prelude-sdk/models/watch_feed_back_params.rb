# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchFeedBackParams < PreludeSDK::BaseModel
      # @!parse
      #   extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      # @!attribute feedback
      #   You should send a feedback event back to Watch API when your user demonstrates
      #     authentic behavior.
      #
      #   @return [PreludeSDK::Models::WatchFeedBackParams::Feedback]
      required :feedback, -> { PreludeSDK::Models::WatchFeedBackParams::Feedback }

      # @!attribute target
      #   The target. Currently this can only be an E.164 formatted phone number.
      #
      #   @return [PreludeSDK::Models::WatchFeedBackParams::Target]
      required :target, -> { PreludeSDK::Models::WatchFeedBackParams::Target }

      # @!parse
      #   # @param feedback [PreludeSDK::Models::WatchFeedBackParams::Feedback]
      #   # @param target [PreludeSDK::Models::WatchFeedBackParams::Target]
      #   # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(feedback:, target:, request_options: {}, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void

      # @example
      # ```ruby
      # feedback => {
      #   type: PreludeSDK::Models::WatchFeedBackParams::Feedback::Type
      # }
      # ```
      class Feedback < PreludeSDK::BaseModel
        # @!attribute type
        #   `CONFIRM_TARGET` should be sent when you are sure that the user with this target
        #     (e.g. phone number) is trustworthy.
        #
        #   @return [Symbol, PreludeSDK::Models::WatchFeedBackParams::Feedback::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchFeedBackParams::Feedback::Type }

        # @!parse
        #   # You should send a feedback event back to Watch API when your user demonstrates
        #   #   authentic behavior.
        #   #
        #   # @param type [Symbol, PreludeSDK::Models::WatchFeedBackParams::Feedback::Type]
        #   #
        #   def initialize(type:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # `CONFIRM_TARGET` should be sent when you are sure that the user with this target
        #   (e.g. phone number) is trustworthy.
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
      #   type: PreludeSDK::Models::WatchFeedBackParams::Target::Type,
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
        #   # @param type [Symbol, PreludeSDK::Models::WatchFeedBackParams::Target::Type]
        #   # @param value [String]
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
