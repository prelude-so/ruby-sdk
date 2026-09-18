# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#reply
    class NotifyReplyParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute reply_to
      #   The inbound message ID (prefixed with `im_`) to reply to. This ID is provided in
      #   the `inbound.message.received` webhook event.
      #
      #   @return [String]
      required :reply_to, String

      # @!attribute text
      #   The reply message body sent as a free-form WhatsApp text.
      #
      #   @return [String]
      required :text, String

      # @!attribute to
      #   The recipient's phone number in E.164 format. Must match the phone number that
      #   sent the original inbound message.
      #
      #   @return [String]
      required :to, String

      # @!attribute callback_url
      #   The URL where webhooks will be sent for delivery events of this reply.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute correlation_id
      #   A user-defined identifier to correlate this reply with your internal systems. It
      #   is returned in the response and any webhook events that refer to this message.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!method initialize(reply_to:, text:, to:, callback_url: nil, correlation_id: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::NotifyReplyParams} for more details.
      #
      #   @param reply_to [String] The inbound message ID (prefixed with `im_`) to reply to. This ID is provided in
      #
      #   @param text [String] The reply message body sent as a free-form WhatsApp text.
      #
      #   @param to [String] The recipient's phone number in E.164 format. Must match the phone number that s
      #
      #   @param callback_url [String] The URL where webhooks will be sent for delivery events of this reply.
      #
      #   @param correlation_id [String] A user-defined identifier to correlate this reply with your internal systems. It
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
