# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Transactional#send_
    class TransactionalSendResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The message identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The message creation date.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute expires_at
      #   The message expiration date.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute template_id
      #   The template identifier.
      #
      #   @return [String]
      required :template_id, String

      # @!attribute to
      #   The recipient's phone number.
      #
      #   @return [String]
      required :to, String

      # @!attribute variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol=>String}]
      required :variables, PreludeSDK::Internal::Type::HashOf[String]

      # @!attribute callback_url
      #   The callback URL.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute correlation_id
      #   A user-defined identifier to correlate this transactional message with. It is
      #   returned in the response and any webhook events that refer to this transactional
      #   message.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute from
      #   The Sender ID.
      #
      #   @return [String, nil]
      optional :from, String

      # @!method initialize(id:, created_at:, expires_at:, template_id:, to:, variables:, callback_url: nil, correlation_id: nil, from: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::TransactionalSendResponse} for more details.
      #
      #   @param id [String] The message identifier.
      #
      #   @param created_at [Time] The message creation date.
      #
      #   @param expires_at [Time] The message expiration date.
      #
      #   @param template_id [String] The template identifier.
      #
      #   @param to [String] The recipient's phone number.
      #
      #   @param variables [Hash{Symbol=>String}] The variables to be replaced in the template.
      #
      #   @param callback_url [String] The callback URL.
      #
      #   @param correlation_id [String] A user-defined identifier to correlate this transactional message with. It is re
      #
      #   @param from [String] The Sender ID.
    end
  end
end
