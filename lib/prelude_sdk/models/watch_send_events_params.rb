# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#send_events
    class WatchSendEventsParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute events
      #   A list of events to dispatch. A maximum of 100 events can be sent in a single
      #   request.
      #
      #   @return [Array<PreludeSDK::Models::WatchSendEventsParams::Event>]
      required :events, -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::WatchSendEventsParams::Event] }

      # @!method initialize(events:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchSendEventsParams} for more details.
      #
      #   @param events [Array<PreludeSDK::Models::WatchSendEventsParams::Event>] A list of events to dispatch. A maximum of 100 events can be sent in a single re
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Event < PreludeSDK::Internal::Type::BaseModel
        # @!attribute confidence
        #   How much this event tells us to trust the end-user's legitimacy — not how
        #   certain you are that the event occurred. In increasing order of trust:
        #   `minimum`, `low`, `neutral`, `high`, `maximum`.
        #
        #   Use `minimum` for an event tied to a user you trust the least to be legitimate
        #   (e.g. a `payment.chargeback`), and `maximum` for an event tied to a highly
        #   trustworthy user (e.g. a confirmed 3DS payment). Prelude weights these signals
        #   when scoring traffic: it filters out users tied to low-confidence events while
        #   preserving the experience for users tied to high-confidence ones.
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
        #   @return [PreludeSDK::Models::Target]
        required :target, -> { PreludeSDK::Target }

        # @!method initialize(confidence:, label:, target:)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::WatchSendEventsParams::Event} for more details.
        #
        #   @param confidence [Symbol, PreludeSDK::Models::WatchSendEventsParams::Event::Confidence] How much this event tells us to trust the end-user's legitimacy — not how certai
        #
        #   @param label [String] A label to describe what the event refers to.
        #
        #   @param target [PreludeSDK::Models::Target] The event target. Only supports phone numbers for now.

        # How much this event tells us to trust the end-user's legitimacy — not how
        # certain you are that the event occurred. In increasing order of trust:
        # `minimum`, `low`, `neutral`, `high`, `maximum`.
        #
        # Use `minimum` for an event tied to a user you trust the least to be legitimate
        # (e.g. a `payment.chargeback`), and `maximum` for an event tied to a highly
        # trustworthy user (e.g. a confirmed 3DS payment). Prelude weights these signals
        # when scoring traffic: it filters out users tied to low-confidence events while
        # preserving the experience for users tied to high-confidence ones.
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
      end
    end
  end
end
