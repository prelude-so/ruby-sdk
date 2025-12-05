# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#send_batch
    class NotifySendBatchParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute template_id
      #   The template identifier configured by your Customer Success team.
      #
      #   @return [String]
      required :template_id, String

      # @!attribute to
      #   The list of recipients' phone numbers in E.164 format.
      #
      #   @return [Array<String>]
      required :to, PreludeSDK::Internal::Type::ArrayOf[String]

      # @!attribute callback_url
      #   The URL where webhooks will be sent for delivery events.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute correlation_id
      #   A user-defined identifier to correlate this request with your internal systems.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute expires_at
      #   The message expiration date in RFC3339 format. Messages will not be sent after
      #   this time.
      #
      #   @return [Time, nil]
      optional :expires_at, Time

      # @!attribute from
      #   The Sender ID. Must be approved for your account.
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute locale
      #   A BCP-47 formatted locale string.
      #
      #   @return [String, nil]
      optional :locale, String

      # @!attribute preferred_channel
      #   Preferred channel for delivery. If unavailable, automatic fallback applies.
      #
      #   @return [Symbol, PreludeSDK::Models::NotifySendBatchParams::PreferredChannel, nil]
      optional :preferred_channel, enum: -> { PreludeSDK::NotifySendBatchParams::PreferredChannel }

      # @!attribute schedule_at
      #   Schedule delivery in RFC3339 format. Marketing sends may be adjusted to comply
      #   with local time windows.
      #
      #   @return [Time, nil]
      optional :schedule_at, Time

      # @!attribute variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :variables, PreludeSDK::Internal::Type::HashOf[String]

      # @!method initialize(template_id:, to:, callback_url: nil, correlation_id: nil, expires_at: nil, from: nil, locale: nil, preferred_channel: nil, schedule_at: nil, variables: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::NotifySendBatchParams} for more details.
      #
      #   @param template_id [String] The template identifier configured by your Customer Success team.
      #
      #   @param to [Array<String>] The list of recipients' phone numbers in E.164 format.
      #
      #   @param callback_url [String] The URL where webhooks will be sent for delivery events.
      #
      #   @param correlation_id [String] A user-defined identifier to correlate this request with your internal systems.
      #
      #   @param expires_at [Time] The message expiration date in RFC3339 format. Messages will not be sent after t
      #
      #   @param from [String] The Sender ID. Must be approved for your account.
      #
      #   @param locale [String] A BCP-47 formatted locale string.
      #
      #   @param preferred_channel [Symbol, PreludeSDK::Models::NotifySendBatchParams::PreferredChannel] Preferred channel for delivery. If unavailable, automatic fallback applies.
      #
      #   @param schedule_at [Time] Schedule delivery in RFC3339 format. Marketing sends may be adjusted to comply w
      #
      #   @param variables [Hash{Symbol=>String}] The variables to be replaced in the template.
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      # Preferred channel for delivery. If unavailable, automatic fallback applies.
      module PreferredChannel
        extend PreludeSDK::Internal::Type::Enum

        SMS = :sms
        WHATSAPP = :whatsapp

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
