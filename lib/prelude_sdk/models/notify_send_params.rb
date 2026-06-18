# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#send_
    class NotifySendParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute template_id
      #   The template identifier configured by your Customer Success team.
      #
      #   @return [String]
      required :template_id, String

      # @!attribute to
      #   The recipient's phone number in E.164 format.
      #
      #   @return [String]
      required :to, String

      # @!attribute callback_url
      #   The URL where webhooks will be sent for message delivery events.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute correlation_id
      #   A user-defined identifier to correlate this message with your internal systems.
      #   It is returned in the response and any webhook events that refer to this
      #   message.
      #
      #   @return [String, nil]
      optional :correlation_id, String

      # @!attribute document
      #   A media attachment to include in the message header. Supported on WhatsApp
      #   templates registered with a `DOCUMENT`, `IMAGE`, or `VIDEO` header. The media
      #   type is determined by the template's registered header format; send the matching
      #   file type for each.
      #
      #   - `DOCUMENT` headers accept PDF and other document formats; `filename` is
      #     required and displayed to the recipient.
      #   - `IMAGE` headers accept `.png`, `.jpg`, `.jpeg`, and `.webp` URLs; `filename`
      #     is ignored.
      #   - `VIDEO` headers accept `.mp4` and `.3gp` URLs; `filename` is ignored.
      #
      #   @return [PreludeSDK::Models::NotifySendParams::Document, nil]
      optional :document, -> { PreludeSDK::NotifySendParams::Document }

      # @!attribute expires_at
      #   The message expiration date in RFC3339 format. The message will not be sent if
      #   this time is reached.
      #
      #   @return [Time, nil]
      optional :expires_at, Time

      # @!attribute from
      #   The Sender ID. Must be approved for your account.
      #
      #   @return [String, nil]
      optional :from, String

      # @!attribute locale
      #   A BCP-47 formatted locale string with the language the text message will be sent
      #   to. If there's no locale set, the language will be determined by the country
      #   code of the phone number. If the language specified doesn't exist, the default
      #   set on the template will be used.
      #
      #   @return [String, nil]
      optional :locale, String

      # @!attribute max_auto_retries
      #   Maximum number of automatic retry attempts across channels for this send, in
      #   addition to the first attempt. For example, `2` allows up to 3 total delivery
      #   attempts. Lower values reduce delivery cost on hard-to-reach numbers at the
      #   expense of deliverability. When omitted, your account's configured default
      #   applies.
      #
      #   @return [Integer, nil]
      optional :max_auto_retries, Integer

      # @!attribute preferred_channel
      #   The preferred channel to be used in priority for message delivery. If the
      #   channel is unavailable, the system will fallback to other available channels.
      #
      #   @return [Symbol, PreludeSDK::Models::NotifySendParams::PreferredChannel, nil]
      optional :preferred_channel, enum: -> { PreludeSDK::NotifySendParams::PreferredChannel }

      # @!attribute schedule_at
      #   Schedule the message for future delivery in RFC3339 format. Marketing messages
      #   can be scheduled up to 90 days in advance and will be automatically adjusted for
      #   compliance with local time window restrictions.
      #
      #   @return [Time, nil]
      optional :schedule_at, Time

      # @!attribute variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :variables, PreludeSDK::Internal::Type::HashOf[String]

      # @!method initialize(template_id:, to:, callback_url: nil, correlation_id: nil, document: nil, expires_at: nil, from: nil, locale: nil, max_auto_retries: nil, preferred_channel: nil, schedule_at: nil, variables: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::NotifySendParams} for more details.
      #
      #   @param template_id [String] The template identifier configured by your Customer Success team.
      #
      #   @param to [String] The recipient's phone number in E.164 format.
      #
      #   @param callback_url [String] The URL where webhooks will be sent for message delivery events.
      #
      #   @param correlation_id [String] A user-defined identifier to correlate this message with your internal systems.
      #
      #   @param document [PreludeSDK::Models::NotifySendParams::Document] A media attachment to include in the message header. Supported on
      #
      #   @param expires_at [Time] The message expiration date in RFC3339 format. The message will not be sent if t
      #
      #   @param from [String] The Sender ID. Must be approved for your account.
      #
      #   @param locale [String] A BCP-47 formatted locale string with the language the text message will be sent
      #
      #   @param max_auto_retries [Integer] Maximum number of automatic retry attempts across channels for this send, in add
      #
      #   @param preferred_channel [Symbol, PreludeSDK::Models::NotifySendParams::PreferredChannel] The preferred channel to be used in priority for message delivery. If the channe
      #
      #   @param schedule_at [Time] Schedule the message for future delivery in RFC3339 format. Marketing messages c
      #
      #   @param variables [Hash{Symbol=>String}] The variables to be replaced in the template.
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Document < PreludeSDK::Internal::Type::BaseModel
        # @!attribute url
        #   HTTPS URL of the media file. The file extension must match the template's
        #   registered header format (PDF for DOCUMENT; PNG/JPG/JPEG/WEBP for IMAGE; MP4/3GP
        #   for VIDEO).
        #
        #   @return [String]
        required :url, String

        # @!attribute filename
        #   Filename displayed to the recipient. Required for templates with a `DOCUMENT`
        #   header; ignored for `IMAGE` and `VIDEO` headers.
        #
        #   @return [String, nil]
        optional :filename, String

        # @!method initialize(url:, filename: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::NotifySendParams::Document} for more details.
        #
        #   A media attachment to include in the message header. Supported on WhatsApp
        #   templates registered with a `DOCUMENT`, `IMAGE`, or `VIDEO` header. The media
        #   type is determined by the template's registered header format; send the matching
        #   file type for each.
        #
        #   - `DOCUMENT` headers accept PDF and other document formats; `filename` is
        #     required and displayed to the recipient.
        #   - `IMAGE` headers accept `.png`, `.jpg`, `.jpeg`, and `.webp` URLs; `filename`
        #     is ignored.
        #   - `VIDEO` headers accept `.mp4` and `.3gp` URLs; `filename` is ignored.
        #
        #   @param url [String] HTTPS URL of the media file. The file extension must match the template's regist
        #
        #   @param filename [String] Filename displayed to the recipient. Required for templates with a `DOCUMENT` he
      end

      # The preferred channel to be used in priority for message delivery. If the
      # channel is unavailable, the system will fallback to other available channels.
      module PreferredChannel
        extend PreludeSDK::Internal::Type::Enum

        SMS = :sms
        RCS = :rcs
        WHATSAPP = :whatsapp

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
