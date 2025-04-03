# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#feed_back
    class WatchFeedBackParams < PreludeSDK::BaseModel
      # @!parse
      #   extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute feedback
      #   You should send a feedback event back to Watch API when your user demonstrates
      #     authentic behavior.
      #
      #   @return [PreludeSDK::Models::WatchFeedBackParams::Feedback]
      required :feedback, -> { PreludeSDK::Models::WatchFeedBackParams::Feedback }

      # @!attribute target
      #   The verification target. Either a phone number or an email address. To use the
      #     email verification feature contact us to discuss your use case.
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
        # @see PreludeSDK::Models::WatchFeedBackParams::Feedback#type
        module Type
          extend PreludeSDK::Enum

          CONFIRM_TARGET = :CONFIRM_TARGET

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end

      class Target < PreludeSDK::BaseModel
        # @!attribute type
        #   The type of the target. Either "phone_number" or "email_address".
        #
        #   @return [Symbol, PreludeSDK::Models::WatchFeedBackParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchFeedBackParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number or an email address.
        #
        #   @return [String]
        required :value, String

        # @!parse
        #   # The verification target. Either a phone number or an email address. To use the
        #   #   email verification feature contact us to discuss your use case.
        #   #
        #   # @param type [Symbol, PreludeSDK::Models::WatchFeedBackParams::Target::Type]
        #   # @param value [String]
        #   #
        #   def initialize(type:, value:, **) = super

        # def initialize: (Hash | PreludeSDK::BaseModel) -> void

        # The type of the target. Either "phone_number" or "email_address".
        #
        # @see PreludeSDK::Models::WatchFeedBackParams::Target#type
        module Type
          extend PreludeSDK::Enum

          PHONE_NUMBER = :phone_number
          EMAIL_ADDRESS = :email_address

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end
      end
    end
  end
end
