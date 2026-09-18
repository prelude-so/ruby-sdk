# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#reply
    class NotifyReplyResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The reply message identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The reply creation date in RFC3339 format.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute reply_to
      #   The inbound message ID this reply was sent in response to.
      #
      #   @return [String]
      required :reply_to, String

      # @!attribute text
      #   The reply message body that was sent.
      #
      #   @return [String]
      required :text, String

      # @!attribute to
      #   The recipient's phone number in E.164 format.
      #
      #   @return [String]
      required :to, String

      # @!attribute callback_url
      #   The callback URL where webhooks will be sent.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute correlation_id
      #   The user-defined correlation identifier echoed back from the request.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!method initialize(id:, created_at:, reply_to:, text:, to:, callback_url: nil, correlation_id: nil)
      #   @param id [String] The reply message identifier.
      #
      #   @param created_at [Time] The reply creation date in RFC3339 format.
      #
      #   @param reply_to [String] The inbound message ID this reply was sent in response to.
      #
      #   @param text [String] The reply message body that was sent.
      #
      #   @param to [String] The recipient's phone number in E.164 format.
      #
      #   @param callback_url [String] The callback URL where webhooks will be sent.
      #
      #   @param correlation_id [String] The user-defined correlation identifier echoed back from the request.
    end
  end
end
