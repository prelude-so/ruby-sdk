# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Transactional#send_
    class TransactionalSendParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

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

      # @!attribute callback_url
      #   The callback URL.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute correlation_id
      #   A user-defined identifier to correlate this transactional message with. It is
      #   returned in the response and any webhook events that refer to this
      #   transactionalmessage.
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
      #   @return [PreludeSDK::Models::TransactionalSendParams::Document, nil]
      optional :document, -> { PreludeSDK::TransactionalSendParams::Document }

      # @!attribute expires_at
      #   The message expiration date.
      #
      #   @return [String, nil]
      optional :expires_at, String

      # @!attribute from
      #   The Sender ID.
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
      #   attempts. When omitted, your account's configured default applies.
      #
      #   @return [Integer, nil]
      optional :max_auto_retries, Integer

      # @!attribute preferred_channel
      #   The preferred delivery channel for the message. When specified, the system will
      #   prioritize sending via the requested channel if the template is configured for
      #   it.
      #
      #   If not specified and the template is configured for WhatsApp, the message will
      #   be sent via WhatsApp first, with automatic fallback to SMS if WhatsApp delivery
      #   is unavailable.
      #
      #   Supported channels: `sms`, `rcs`, `whatsapp`.
      #
      #   @return [Symbol, PreludeSDK::Models::TransactionalSendParams::PreferredChannel, nil]
      optional :preferred_channel, enum: -> { PreludeSDK::TransactionalSendParams::PreferredChannel }

      # @!attribute variables
      #   The variables to be replaced in the template.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :variables, PreludeSDK::Internal::Type::HashOf[String]

      # @!method initialize(template_id:, to:, callback_url: nil, correlation_id: nil, document: nil, expires_at: nil, from: nil, locale: nil, max_auto_retries: nil, preferred_channel: nil, variables: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::TransactionalSendParams} for more details.
      #
      #   @param template_id [String] The template identifier.
      #
      #   @param to [String] The recipient's phone number.
      #
      #   @param callback_url [String] The callback URL.
      #
      #   @param correlation_id [String] A user-defined identifier to correlate this transactional message with. It is re
      #
      #   @param document [PreludeSDK::Models::TransactionalSendParams::Document] A media attachment to include in the message header. Supported on
      #
      #   @param expires_at [String] The message expiration date.
      #
      #   @param from [String] The Sender ID.
      #
      #   @param locale [String] A BCP-47 formatted locale string with the language the text message will be sent
      #
      #   @param max_auto_retries [Integer] Maximum number of automatic retry attempts across channels for this send, in add
      #
      #   @param preferred_channel [Symbol, PreludeSDK::Models::TransactionalSendParams::PreferredChannel] The preferred delivery channel for the message. When specified, the system will
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
        #   {PreludeSDK::Models::TransactionalSendParams::Document} for more details.
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

      # The preferred delivery channel for the message. When specified, the system will
      # prioritize sending via the requested channel if the template is configured for
      # it.
      #
      # If not specified and the template is configured for WhatsApp, the message will
      # be sent via WhatsApp first, with automatic fallback to SMS if WhatsApp delivery
      # is unavailable.
      #
      # Supported channels: `sms`, `rcs`, `whatsapp`.
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
