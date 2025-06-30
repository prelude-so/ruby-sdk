# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#send_events
    class WatchSendEventsParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute events
      #   A list of events to dispatch.
      #
      #   @return [Array<PreludeSDK::Models::WatchSendEventsParams::Event>]
      required :events, -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::WatchSendEventsParams::Event] }

      # @!method initialize(events:, request_options: {})
      #   @param events [Array<PreludeSDK::Models::WatchSendEventsParams::Event>] A list of events to dispatch.
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Event < PreludeSDK::Internal::Type::BaseModel
        # @!attribute confidence
        #   A confidence level you want to assign to the event.
        #
        #   @return [Symbol, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence]
        required :confidence, enum: -> { PreludeSDK::WatchSendEventsParams::Event::Confidence }

        # @!attribute label
        #   A label to describe what the event refers to.
        #
        #   @return [String]
        required :label, String

        # @!attribute target
        #   The event target. Only supports phone numbers for now.
        #
        #   @return [PreludeSDK::Models::WatchSendEventsParams::Event::Target]
        required :target, -> { PreludeSDK::WatchSendEventsParams::Event::Target }

        # @!method initialize(confidence:, label:, target:)
        #   @param confidence [Symbol, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence] A confidence level you want to assign to the event.
        #
        #   @param label [String] A label to describe what the event refers to.
        #
        #   @param target [PreludeSDK::Models::WatchSendEventsParams::Event::Target] The event target. Only supports phone numbers for now.

        # A confidence level you want to assign to the event.
        #
        # @see PreludeSDK::Models::WatchSendEventsParams::Event#confidence
        module Confidence
          extend PreludeSDK::Internal::Type::Enum

          MAXIMUM = :maximum
          HIGH = :high
          NEUTRAL = :neutral
          LOW = :low
          MINIMUM = :minimum

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see PreludeSDK::Models::WatchSendEventsParams::Event#target
        class Target < PreludeSDK::Internal::Type::BaseModel
          # @!attribute type
          #   The type of the target. Either "phone_number" or "email_address".
          #
          #   @return [Symbol, PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type]
          required :type, enum: -> { PreludeSDK::WatchSendEventsParams::Event::Target::Type }

          # @!attribute value
          #   An E.164 formatted phone number or an email address.
          #
          #   @return [String]
          required :value, String

          # @!method initialize(type:, value:)
          #   The event target. Only supports phone numbers for now.
          #
          #   @param type [Symbol, PreludeSDK::Models::WatchSendEventsParams::Event::Target::Type] The type of the target. Either "phone_number" or "email_address".
          #
          #   @param value [String] An E.164 formatted phone number or an email address.

          # The type of the target. Either "phone_number" or "email_address".
          #
          # @see PreludeSDK::Models::WatchSendEventsParams::Event::Target#type
          module Type
            extend PreludeSDK::Internal::Type::Enum

            PHONE_NUMBER = :phone_number
            EMAIL_ADDRESS = :email_address

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
