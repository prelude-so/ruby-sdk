# typed: strong

module PreludeSDK
  module Models
    class NotifySendBatchParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::NotifySendBatchParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The template identifier configured by your Customer Success team.
      sig { returns(String) }
      attr_accessor :template_id

      # The list of recipients' phone numbers in E.164 format.
      sig { returns(T::Array[String]) }
      attr_accessor :to

      # The URL where webhooks will be sent for delivery events.
      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      # A user-defined identifier to correlate this request with your internal systems.
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
      sig { returns(T.nilable(PreludeSDK::NotifySendBatchParams::Document)) }
      attr_reader :document

      sig do
        params(
          document: PreludeSDK::NotifySendBatchParams::Document::OrHash
        ).void
      end
      attr_writer :document

      # The message expiration date in RFC3339 format. Messages will not be sent after
      # this time.
      sig { returns(T.nilable(Time)) }
      attr_reader :expires_at

      sig { params(expires_at: Time).void }
      attr_writer :expires_at

      # The Sender ID. Must be approved for your account.
      sig { returns(T.nilable(String)) }
      attr_reader :from

      sig { params(from: String).void }
      attr_writer :from

      # A BCP-47 formatted locale string.
      sig { returns(T.nilable(String)) }
      attr_reader :locale

      sig { params(locale: String).void }
      attr_writer :locale

      # Maximum number of automatic retry attempts across channels for each send in the
      # batch, in addition to the first attempt. For example, `2` allows up to 3 total
      # delivery attempts per recipient. Lower values reduce delivery cost on
      # hard-to-reach numbers at the expense of deliverability. When omitted, your
      # account's configured default applies.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_auto_retries

      sig { params(max_auto_retries: Integer).void }
      attr_writer :max_auto_retries

      # Preferred channel for delivery. If unavailable, automatic fallback applies.
      sig do
        returns(
          T.nilable(
            PreludeSDK::NotifySendBatchParams::PreferredChannel::OrSymbol
          )
        )
      end
      attr_reader :preferred_channel

      sig do
        params(
          preferred_channel:
            PreludeSDK::NotifySendBatchParams::PreferredChannel::OrSymbol
        ).void
      end
      attr_writer :preferred_channel

      # Schedule delivery in RFC3339 format. Marketing sends may be adjusted to comply
      # with local time windows.
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
          to: T::Array[String],
          callback_url: String,
          correlation_id: String,
          document: PreludeSDK::NotifySendBatchParams::Document::OrHash,
          expires_at: Time,
          from: String,
          locale: String,
          max_auto_retries: Integer,
          preferred_channel:
            PreludeSDK::NotifySendBatchParams::PreferredChannel::OrSymbol,
          schedule_at: Time,
          variables: T::Hash[Symbol, String],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The template identifier configured by your Customer Success team.
        template_id:,
        # The list of recipients' phone numbers in E.164 format.
        to:,
        # The URL where webhooks will be sent for delivery events.
        callback_url: nil,
        # A user-defined identifier to correlate this request with your internal systems.
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
        # The message expiration date in RFC3339 format. Messages will not be sent after
        # this time.
        expires_at: nil,
        # The Sender ID. Must be approved for your account.
        from: nil,
        # A BCP-47 formatted locale string.
        locale: nil,
        # Maximum number of automatic retry attempts across channels for each send in the
        # batch, in addition to the first attempt. For example, `2` allows up to 3 total
        # delivery attempts per recipient. Lower values reduce delivery cost on
        # hard-to-reach numbers at the expense of deliverability. When omitted, your
        # account's configured default applies.
        max_auto_retries: nil,
        # Preferred channel for delivery. If unavailable, automatic fallback applies.
        preferred_channel: nil,
        # Schedule delivery in RFC3339 format. Marketing sends may be adjusted to comply
        # with local time windows.
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
            to: T::Array[String],
            callback_url: String,
            correlation_id: String,
            document: PreludeSDK::NotifySendBatchParams::Document,
            expires_at: Time,
            from: String,
            locale: String,
            max_auto_retries: Integer,
            preferred_channel:
              PreludeSDK::NotifySendBatchParams::PreferredChannel::OrSymbol,
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
              PreludeSDK::NotifySendBatchParams::Document,
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

      # Preferred channel for delivery. If unavailable, automatic fallback applies.
      module PreferredChannel
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::NotifySendBatchParams::PreferredChannel)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :sms,
            PreludeSDK::NotifySendBatchParams::PreferredChannel::TaggedSymbol
          )
        RCS =
          T.let(
            :rcs,
            PreludeSDK::NotifySendBatchParams::PreferredChannel::TaggedSymbol
          )
        WHATSAPP =
          T.let(
            :whatsapp,
            PreludeSDK::NotifySendBatchParams::PreferredChannel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::NotifySendBatchParams::PreferredChannel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
