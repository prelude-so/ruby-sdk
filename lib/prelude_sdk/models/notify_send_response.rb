# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#send_
    class NotifySendResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The message identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #   The message creation date in RFC3339 format.
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute expires_at
      #   The message expiration date in RFC3339 format.
      #
      #   @return [Time]
      required :expires_at, Time

      # @!attribute template_id
      #   The template identifier.
      #
      #   @return [String]
      required :template_id, String

      # @!attribute to
      #   The recipient's phone number in E.164 format.
      #
      #   @return [String]
      required :to, String

      # @!attribute variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol=>String}]
      required :variables, PreludeSDK::Internal::Type::HashOf[String]

      # @!attribute callback_url
      #   The callback URL where webhooks will be sent.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute correlation_id
      #   A user-defined identifier to correlate this message with your internal systems.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute from
      #   The Sender ID used for this message.
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute schedule_at
      #   When the message will actually be sent in RFC3339 format with timezone offset.
      #   For marketing messages, this may differ from the requested schedule_at due to
      #   automatic compliance adjustments.
      #
      #   @return [Time, nil]
      optional :schedule_at, Time

      # @!method initialize(id:, created_at:, expires_at:, template_id:, to:, variables:, callback_url: nil, correlation_id: nil, from: nil, schedule_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::NotifySendResponse} for more details.
      #
      #   @param id [String] The message identifier.
      #
      #   @param created_at [Time] The message creation date in RFC3339 format.
      #
      #   @param expires_at [Time] The message expiration date in RFC3339 format.
      #
      #   @param template_id [String] The template identifier.
      #
      #   @param to [String] The recipient's phone number in E.164 format.
      #
      #   @param variables [Hash{Symbol=>String}] The variables to be replaced in the template.
      #
      #   @param callback_url [String] The callback URL where webhooks will be sent.
      #
      #   @param correlation_id [String] A user-defined identifier to correlate this message with your internal systems.
      #
      #   @param from [String] The Sender ID used for this message.
      #
      #   @param schedule_at [Time] When the message will actually be sent in RFC3339 format with timezone offset. F
    end
  end
end
