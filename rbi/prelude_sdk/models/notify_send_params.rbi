# typed: strong

module PreludeSDK
  module Models
    class NotifySendParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(PreludeSDK::NotifySendParams, PreludeSDK::Internal::AnyHash)
        end

      # The template identifier configured by your Customer Success team.
      sig { returns(String) }
      attr_accessor :template_id

      # The recipient's phone number in E.164 format.
      sig { returns(String) }
      attr_accessor :to

      # The URL where webhooks will be sent for message delivery events.
      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      # A user-defined identifier to correlate this message with your internal systems.
      # It is returned in the response and any webhook events that refer to this
      # message.
      sig { returns(T.nilable(String)) }
      attr_reader :correlation_id

      sig { params(correlation_id: String).void }
      attr_writer :correlation_id

      # A media attachment to include in the message header. Supported on WhatsApp
      # templates registered with a `DOCUMENT`, `IMAGE`, or `VIDEO` header. The media
      # type is determined by the template's registered header format; send the matching
      # file type for each.
      #
      # - `DOCUMENT` headers accept PDF and other document formats; `filename` is
      #   required and displayed to the recipient.
      # - `IMAGE` headers accept `.png`, `.jpg`, `.jpeg`, and `.webp` URLs; `filename`
      #   is ignored.
      # - `VIDEO` headers accept `.mp4` and `.3gp` URLs; `filename` is ignored.
      sig { returns(T.nilable(PreludeSDK::NotifySendParams::Document)) }
      attr_reader :document

      sig do
        params(document: PreludeSDK::NotifySendParams::Document::OrHash).void
      end
      attr_writer :document

      # The message expiration date in RFC3339 format. The message will not be sent if
      # this time is reached.
      sig { returns(T.nilable(Time)) }
      attr_reader :expires_at

      sig { params(expires_at: Time).void }
      attr_writer :expires_at

      # The Sender ID. Must be approved for your account.
      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # A BCP-47 formatted locale string with the language the text message will be sent
      # to. If there's no locale set, the language will be determined by the country
      # code of the phone number. If the language specified doesn't exist, the default
      # set on the template will be used.
      sig { returns(T.nilable(String)) }
      attr_reader :locale

      sig { params(locale: String).void }
      attr_writer :locale

      # Maximum number of automatic retry attempts across channels for this send, in
      # addition to the first attempt. For example, `2` allows up to 3 total delivery
      # attempts. Lower values reduce delivery cost on hard-to-reach numbers at the
      # expense of deliverability. When omitted, your account's configured default
      # applies.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_auto_retries

      sig { params(max_auto_retries: Integer).void }
      attr_writer :max_auto_retries

      # The preferred channel to be used in priority for message delivery. If the
      # channel is unavailable, the system will fallback to other available channels.
      sig do
        returns(
          T.nilable(PreludeSDK::NotifySendParams::PreferredChannel::OrSymbol)
        )
      end
      attr_reader :preferred_channel

      sig do
        params(
          preferred_channel:
            PreludeSDK::NotifySendParams::PreferredChannel::OrSymbol
        ).void
      end
      attr_writer :preferred_channel

      # Schedule the message for future delivery in RFC3339 format. Marketing messages
      # can be scheduled up to 90 days in advance and will be automatically adjusted for
      # compliance with local time window restrictions.
      sig { returns(T.nilable(Time)) }
      attr_reader :schedule_at

      sig { params(schedule_at: Time).void }
      attr_writer :schedule_at

      # The variables to be replaced in the template.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :variables

      sig { params(variables: T::Hash[Symbol, String]).void }
      attr_writer :variables

      sig do
        params(
          template_id: String,
          to: String,
          callback_url: String,
          correlation_id: String,
          document: PreludeSDK::NotifySendParams::Document::OrHash,
          expires_at: Time,
          from: String,
          locale: String,
          max_auto_retries: Integer,
          preferred_channel:
            PreludeSDK::NotifySendParams::PreferredChannel::OrSymbol,
          schedule_at: Time,
          variables: T::Hash[Symbol, String],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The template identifier configured by your Customer Success team.
        template_id:,
        # The recipient's phone number in E.164 format.
        to:,
        # The URL where webhooks will be sent for message delivery events.
        callback_url: nil,
        # A user-defined identifier to correlate this message with your internal systems.
        # It is returned in the response and any webhook events that refer to this
        # message.
        correlation_id: nil,
        # A media attachment to include in the message header. Supported on WhatsApp
        # templates registered with a `DOCUMENT`, `IMAGE`, or `VIDEO` header. The media
        # type is determined by the template's registered header format; send the matching
        # file type for each.
        #
        # - `DOCUMENT` headers accept PDF and other document formats; `filename` is
        #   required and displayed to the recipient.
        # - `IMAGE` headers accept `.png`, `.jpg`, `.jpeg`, and `.webp` URLs; `filename`
        #   is ignored.
        # - `VIDEO` headers accept `.mp4` and `.3gp` URLs; `filename` is ignored.
        document: nil,
        # The message expiration date in RFC3339 format. The message will not be sent if
        # this time is reached.
        expires_at: nil,
        # The Sender ID. Must be approved for your account.
        from: nil,
        # A BCP-47 formatted locale string with the language the text message will be sent
        # to. If there's no locale set, the language will be determined by the country
        # code of the phone number. If the language specified doesn't exist, the default
        # set on the template will be used.
        locale: nil,
        # Maximum number of automatic retry attempts across channels for this send, in
        # addition to the first attempt. For example, `2` allows up to 3 total delivery
        # attempts. Lower values reduce delivery cost on hard-to-reach numbers at the
        # expense of deliverability. When omitted, your account's configured default
        # applies.
        max_auto_retries: nil,
        # The preferred channel to be used in priority for message delivery. If the
        # channel is unavailable, the system will fallback to other available channels.
        preferred_channel: nil,
        # Schedule the message for future delivery in RFC3339 format. Marketing messages
        # can be scheduled up to 90 days in advance and will be automatically adjusted for
        # compliance with local time window restrictions.
        schedule_at: nil,
        # The variables to be replaced in the template.
        variables: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            template_id: String,
            to: String,
            callback_url: String,
            correlation_id: String,
            document: PreludeSDK::NotifySendParams::Document,
            expires_at: Time,
            from: String,
            locale: String,
            max_auto_retries: Integer,
            preferred_channel:
              PreludeSDK::NotifySendParams::PreferredChannel::OrSymbol,
            schedule_at: Time,
            variables: T::Hash[Symbol, String],
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Document < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::NotifySendParams::Document,
              PreludeSDK::Internal::AnyHash
            )
          end

        # HTTPS URL of the media file. The file extension must match the template's
        # registered header format (PDF for DOCUMENT; PNG/JPG/JPEG/WEBP for IMAGE; MP4/3GP
        # for VIDEO).
        sig { returns(String) }
        attr_accessor :url

        # Filename displayed to the recipient. Required for templates with a `DOCUMENT`
        # header; ignored for `IMAGE` and `VIDEO` headers.
        sig { returns(T.nilable(String)) }
        attr_reader :filename

        sig { params(filename: String).void }
        attr_writer :filename

        # A media attachment to include in the message header. Supported on WhatsApp
        # templates registered with a `DOCUMENT`, `IMAGE`, or `VIDEO` header. The media
        # type is determined by the template's registered header format; send the matching
        # file type for each.
        #
        # - `DOCUMENT` headers accept PDF and other document formats; `filename` is
        #   required and displayed to the recipient.
        # - `IMAGE` headers accept `.png`, `.jpg`, `.jpeg`, and `.webp` URLs; `filename`
        #   is ignored.
        # - `VIDEO` headers accept `.mp4` and `.3gp` URLs; `filename` is ignored.
        sig { params(url: String, filename: String).returns(T.attached_class) }
        def self.new(
          # HTTPS URL of the media file. The file extension must match the template's
          # registered header format (PDF for DOCUMENT; PNG/JPG/JPEG/WEBP for IMAGE; MP4/3GP
          # for VIDEO).
          url:,
          # Filename displayed to the recipient. Required for templates with a `DOCUMENT`
          # header; ignored for `IMAGE` and `VIDEO` headers.
          filename: nil
        )
        end

        sig { override.returns({ url: String, filename: String }) }
        def to_hash
        end
      end

      # The preferred channel to be used in priority for message delivery. If the
      # channel is unavailable, the system will fallback to other available channels.
      module PreferredChannel
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::NotifySendParams::PreferredChannel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :sms,
            PreludeSDK::NotifySendParams::PreferredChannel::TaggedSymbol
          )
        RCS =
          T.let(
            :rcs,
            PreludeSDK::NotifySendParams::PreferredChannel::TaggedSymbol
          )
        WHATSAPP =
          T.let(
            :whatsapp,
            PreludeSDK::NotifySendParams::PreferredChannel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::NotifySendParams::PreferredChannel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
