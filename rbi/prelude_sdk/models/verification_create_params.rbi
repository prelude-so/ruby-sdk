# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::VerificationCreateParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The verification target. Either a phone number or an email address. To use the
      # email verification feature contact us to discuss your use case.
      sig { returns(PreludeSDK::Target) }
      attr_reader :target

      sig { params(target: PreludeSDK::Target::OrHash).void }
      attr_writer :target

      # The identifier of the dispatch that came from the front-end SDK.
      sig { returns(T.nilable(String)) }
      attr_reader :dispatch_id

      sig { params(dispatch_id: String).void }
      attr_writer :dispatch_id

      # The metadata for this verification. This object will be returned with every
      # response or webhook sent that refers to this verification.
      sig { returns(T.nilable(PreludeSDK::VerificationCreateParams::Metadata)) }
      attr_reader :metadata

      sig do
        params(
          metadata: PreludeSDK::VerificationCreateParams::Metadata::OrHash
        ).void
      end
      attr_writer :metadata

      # Verification options
      sig { returns(T.nilable(PreludeSDK::VerificationCreateParams::Options)) }
      attr_reader :options

      sig do
        params(
          options: PreludeSDK::VerificationCreateParams::Options::OrHash
        ).void
      end
      attr_writer :options

      # The signals used for anti-fraud. For more details, refer to
      # [Signals](/verify/v2/documentation/prevent-fraud#signals).
      sig { returns(T.nilable(PreludeSDK::Signals)) }
      attr_reader :signals

      sig { params(signals: PreludeSDK::Signals::OrHash).void }
      attr_writer :signals

      sig do
        params(
          target: PreludeSDK::Target::OrHash,
          dispatch_id: String,
          metadata: PreludeSDK::VerificationCreateParams::Metadata::OrHash,
          options: PreludeSDK::VerificationCreateParams::Options::OrHash,
          signals: PreludeSDK::Signals::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The verification target. Either a phone number or an email address. To use the
        # email verification feature contact us to discuss your use case.
        target:,
        # The identifier of the dispatch that came from the front-end SDK.
        dispatch_id: nil,
        # The metadata for this verification. This object will be returned with every
        # response or webhook sent that refers to this verification.
        metadata: nil,
        # Verification options
        options: nil,
        # The signals used for anti-fraud. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        signals: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            target: PreludeSDK::Target,
            dispatch_id: String,
            metadata: PreludeSDK::VerificationCreateParams::Metadata,
            options: PreludeSDK::VerificationCreateParams::Options,
            signals: PreludeSDK::Signals,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Metadata < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationCreateParams::Metadata,
              PreludeSDK::Internal::AnyHash
            )
          end

        # A user-defined identifier to correlate this verification with. It is returned in
        # the response and any webhook events that refer to this verification.
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        # The metadata for this verification. This object will be returned with every
        # response or webhook sent that refers to this verification.
        sig { params(correlation_id: String).returns(T.attached_class) }
        def self.new(
          # A user-defined identifier to correlate this verification with. It is returned in
          # the response and any webhook events that refer to this verification.
          correlation_id: nil
        )
        end

        sig { override.returns({ correlation_id: String }) }
        def to_hash
        end
      end

      class Options < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationCreateParams::Options,
              PreludeSDK::Internal::AnyHash
            )
          end

        # This allows automatic OTP retrieval on mobile apps and web browsers. Supported
        # platforms are Android (SMS Retriever API) and Web (WebOTP API).
        sig do
          returns(
            T.nilable(PreludeSDK::VerificationCreateParams::Options::AppRealm)
          )
        end
        attr_reader :app_realm

        sig do
          params(
            app_realm:
              PreludeSDK::VerificationCreateParams::Options::AppRealm::OrHash
          ).void
        end
        attr_writer :app_realm

        # The URL where webhooks will be sent when verification events occur, including
        # verification creation, attempt creation, and delivery status changes. For more
        # details, refer to [Webhook](/verify/v2/documentation/webhook).
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url

        sig { params(callback_url: String).void }
        attr_writer :callback_url

        # The channels this verification may use, in the order they are tried. Channels
        # you omit are never used, including on retries. This option can only be set when
        # the verification is created. The list is recorded on the verification and
        # applies for its whole lifecycle, so `channels` sent while retrying an existing
        # verification is ignored — unlike `preferred_channel`, which is honored on every
        # retry. Every channel you list must be enabled on your account and active in the
        # destination country, otherwise the request fails with
        # `channel_not_enabled_in_region`. Prelude still picks the best provider within
        # each channel. Cannot be combined with `preferred_channel`. Voice is requested
        # through `method` instead. Disabled by default — contact support to enable it.
        sig do
          returns(
            T.nilable(
              T::Array[
                PreludeSDK::VerificationCreateParams::Options::Channel::OrSymbol
              ]
            )
          )
        end
        attr_reader :channels

        sig do
          params(
            channels:
              T::Array[
                PreludeSDK::VerificationCreateParams::Options::Channel::OrSymbol
              ]
          ).void
        end
        attr_writer :channels

        # The size of the code generated. It should be between 4 and 8. Defaults to the
        # code size specified from the Dashboard.
        sig { returns(T.nilable(Integer)) }
        attr_reader :code_size

        sig { params(code_size: Integer).void }
        attr_writer :code_size

        # The custom code to use for OTP verification. To use the custom code feature,
        # contact us to enable it for your account. For more details, refer to
        # [Custom Code](/verify/v2/documentation/custom-codes).
        sig { returns(T.nilable(String)) }
        attr_reader :custom_code

        sig { params(custom_code: String).void }
        attr_writer :custom_code

        # When `true`, the verification is routed through challenge-safe channels
        # (non-SMS/Voice) regardless of country eligibility or any antispam outcome. The
        # resulting verification has `status: "challenged"`. Use this when you have your
        # own signal that the request is suspicious and want stricter routing — the
        # verification is **not** classified as fraud and does not contribute to
        # anti-fraud counters or risk factors. This feature is disabled by default —
        # contact Prelude support to enable it on your account.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :force_challenge

        sig { params(force_challenge: T::Boolean).void }
        attr_writer :force_challenge

        # A BCP-47 formatted locale string with the language the text message will be sent
        # to. If there's no locale set, the language will be determined by the country
        # code of the phone number. If the language specified doesn't exist, it defaults
        # to US English.
        sig { returns(T.nilable(String)) }
        attr_reader :locale

        sig { params(locale: String).void }
        attr_writer :locale

        # Maximum number of delivery attempts Prelude may add on its own after the one you
        # requested. `0` means a single attempt: if it cannot be delivered, Prelude
        # neither tries another provider nor another channel, and does not retry
        # automatically. `1` allows one additional attempt, and so on — a value larger
        # than the number of routes available for the destination simply behaves like the
        # default. When omitted, Prelude retries as your account is configured, across as
        # many channels as the route offers.
        #
        # This option can only be set when the verification is created. The value is
        # recorded on the verification and applies for its whole lifecycle, so a
        # `max_auto_fallbacks` sent while retrying an existing verification is ignored —
        # the limit cannot be raised or lowered after the fact. A retry you ask for is not
        # an automatic attempt, so it gets a fresh allowance of the same limit. This
        # option is disabled by default — contact Prelude support to enable it on your
        # account.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_auto_fallbacks

        sig { params(max_auto_fallbacks: Integer).void }
        attr_writer :max_auto_fallbacks

        # The method used for verifying this phone number. The 'voice' option provides an
        # accessible alternative for visually impaired users by delivering the
        # verification code through a phone call rather than a text message. It also
        # allows verification of landline numbers that cannot receive SMS messages. The
        # 'message' option explicitly requests message delivery (SMS, WhatsApp ...) and
        # skips silent verification, useful for scenarios requiring direct user
        # interaction.
        sig do
          returns(
            T.nilable(
              PreludeSDK::VerificationCreateParams::Options::Method::OrSymbol
            )
          )
        end
        attr_reader :verification_method

        sig do
          params(
            verification_method:
              PreludeSDK::VerificationCreateParams::Options::Method::OrSymbol
          ).void
        end
        attr_writer :verification_method

        # The channel to prioritize when delivering the verification. Prelude prioritizes
        # this channel on the first attempt and continues to prefer it on retries while an
        # untried route on that channel remains; once those are exhausted, retries fall
        # back to the next best available route. If the channel is unavailable (for
        # example, when a verification is challenged), Prelude uses the best available
        # route instead. Cannot be combined with `channels`.
        sig do
          returns(
            T.nilable(
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::OrSymbol
            )
          )
        end
        attr_reader :preferred_channel

        sig do
          params(
            preferred_channel:
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::OrSymbol
          ).void
        end
        attr_writer :preferred_channel

        # The Sender ID to use for this message. The Sender ID needs to be enabled by
        # Prelude.
        sig { returns(T.nilable(String)) }
        attr_reader :sender_id

        sig { params(sender_id: String).void }
        attr_writer :sender_id

        # The identifier of a verification template. It applies use case-specific
        # settings, such as the message content or certain verification parameters.
        sig { returns(T.nilable(String)) }
        attr_reader :template_id

        sig { params(template_id: String).void }
        attr_writer :template_id

        # The variables to be replaced in the template.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :variables

        sig { params(variables: T::Hash[Symbol, String]).void }
        attr_writer :variables

        # Verification options
        sig do
          params(
            app_realm:
              PreludeSDK::VerificationCreateParams::Options::AppRealm::OrHash,
            callback_url: String,
            channels:
              T::Array[
                PreludeSDK::VerificationCreateParams::Options::Channel::OrSymbol
              ],
            code_size: Integer,
            custom_code: String,
            force_challenge: T::Boolean,
            locale: String,
            max_auto_fallbacks: Integer,
            verification_method:
              PreludeSDK::VerificationCreateParams::Options::Method::OrSymbol,
            preferred_channel:
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::OrSymbol,
            sender_id: String,
            template_id: String,
            variables: T::Hash[Symbol, String]
          ).returns(T.attached_class)
        end
        def self.new(
          # This allows automatic OTP retrieval on mobile apps and web browsers. Supported
          # platforms are Android (SMS Retriever API) and Web (WebOTP API).
          app_realm: nil,
          # The URL where webhooks will be sent when verification events occur, including
          # verification creation, attempt creation, and delivery status changes. For more
          # details, refer to [Webhook](/verify/v2/documentation/webhook).
          callback_url: nil,
          # The channels this verification may use, in the order they are tried. Channels
          # you omit are never used, including on retries. This option can only be set when
          # the verification is created. The list is recorded on the verification and
          # applies for its whole lifecycle, so `channels` sent while retrying an existing
          # verification is ignored — unlike `preferred_channel`, which is honored on every
          # retry. Every channel you list must be enabled on your account and active in the
          # destination country, otherwise the request fails with
          # `channel_not_enabled_in_region`. Prelude still picks the best provider within
          # each channel. Cannot be combined with `preferred_channel`. Voice is requested
          # through `method` instead. Disabled by default — contact support to enable it.
          channels: nil,
          # The size of the code generated. It should be between 4 and 8. Defaults to the
          # code size specified from the Dashboard.
          code_size: nil,
          # The custom code to use for OTP verification. To use the custom code feature,
          # contact us to enable it for your account. For more details, refer to
          # [Custom Code](/verify/v2/documentation/custom-codes).
          custom_code: nil,
          # When `true`, the verification is routed through challenge-safe channels
          # (non-SMS/Voice) regardless of country eligibility or any antispam outcome. The
          # resulting verification has `status: "challenged"`. Use this when you have your
          # own signal that the request is suspicious and want stricter routing — the
          # verification is **not** classified as fraud and does not contribute to
          # anti-fraud counters or risk factors. This feature is disabled by default —
          # contact Prelude support to enable it on your account.
          force_challenge: nil,
          # A BCP-47 formatted locale string with the language the text message will be sent
          # to. If there's no locale set, the language will be determined by the country
          # code of the phone number. If the language specified doesn't exist, it defaults
          # to US English.
          locale: nil,
          # Maximum number of delivery attempts Prelude may add on its own after the one you
          # requested. `0` means a single attempt: if it cannot be delivered, Prelude
          # neither tries another provider nor another channel, and does not retry
          # automatically. `1` allows one additional attempt, and so on — a value larger
          # than the number of routes available for the destination simply behaves like the
          # default. When omitted, Prelude retries as your account is configured, across as
          # many channels as the route offers.
          #
          # This option can only be set when the verification is created. The value is
          # recorded on the verification and applies for its whole lifecycle, so a
          # `max_auto_fallbacks` sent while retrying an existing verification is ignored —
          # the limit cannot be raised or lowered after the fact. A retry you ask for is not
          # an automatic attempt, so it gets a fresh allowance of the same limit. This
          # option is disabled by default — contact Prelude support to enable it on your
          # account.
          max_auto_fallbacks: nil,
          # The method used for verifying this phone number. The 'voice' option provides an
          # accessible alternative for visually impaired users by delivering the
          # verification code through a phone call rather than a text message. It also
          # allows verification of landline numbers that cannot receive SMS messages. The
          # 'message' option explicitly requests message delivery (SMS, WhatsApp ...) and
          # skips silent verification, useful for scenarios requiring direct user
          # interaction.
          verification_method: nil,
          # The channel to prioritize when delivering the verification. Prelude prioritizes
          # this channel on the first attempt and continues to prefer it on retries while an
          # untried route on that channel remains; once those are exhausted, retries fall
          # back to the next best available route. If the channel is unavailable (for
          # example, when a verification is challenged), Prelude uses the best available
          # route instead. Cannot be combined with `channels`.
          preferred_channel: nil,
          # The Sender ID to use for this message. The Sender ID needs to be enabled by
          # Prelude.
          sender_id: nil,
          # The identifier of a verification template. It applies use case-specific
          # settings, such as the message content or certain verification parameters.
          template_id: nil,
          # The variables to be replaced in the template.
          variables: nil
        )
        end

        sig do
          override.returns(
            {
              app_realm:
                PreludeSDK::VerificationCreateParams::Options::AppRealm,
              callback_url: String,
              channels:
                T::Array[
                  PreludeSDK::VerificationCreateParams::Options::Channel::OrSymbol
                ],
              code_size: Integer,
              custom_code: String,
              force_challenge: T::Boolean,
              locale: String,
              max_auto_fallbacks: Integer,
              verification_method:
                PreludeSDK::VerificationCreateParams::Options::Method::OrSymbol,
              preferred_channel:
                PreludeSDK::VerificationCreateParams::Options::PreferredChannel::OrSymbol,
              sender_id: String,
              template_id: String,
              variables: T::Hash[Symbol, String]
            }
          )
        end
        def to_hash
        end

        class AppRealm < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::VerificationCreateParams::Options::AppRealm,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The platform for automatic OTP retrieval. Use "android" for the SMS Retriever
          # API or "web" for the WebOTP API.
          sig do
            returns(
              PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol
            )
          end
          attr_accessor :platform

          # The value depends on the platform:
          #
          # - For Android: The SMS Retriever API hash code (11 characters). See
          #   [Google documentation](https://developers.google.com/identity/sms-retriever/verify#computing_your_apps_hash_string).
          # - For Web: The origin domain (e.g., "example.com" or "www.example.com"). See
          #   [WebOTP API documentation](https://developer.mozilla.org/en-US/docs/Web/API/WebOTP_API).
          sig { returns(String) }
          attr_accessor :value

          # This allows automatic OTP retrieval on mobile apps and web browsers. Supported
          # platforms are Android (SMS Retriever API) and Web (WebOTP API).
          sig do
            params(
              platform:
                PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol,
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The platform for automatic OTP retrieval. Use "android" for the SMS Retriever
            # API or "web" for the WebOTP API.
            platform:,
            # The value depends on the platform:
            #
            # - For Android: The SMS Retriever API hash code (11 characters). See
            #   [Google documentation](https://developers.google.com/identity/sms-retriever/verify#computing_your_apps_hash_string).
            # - For Web: The origin domain (e.g., "example.com" or "www.example.com"). See
            #   [WebOTP API documentation](https://developer.mozilla.org/en-US/docs/Web/API/WebOTP_API).
            value:
          )
          end

          sig do
            override.returns(
              {
                platform:
                  PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::OrSymbol,
                value: String
              }
            )
          end
          def to_hash
          end

          # The platform for automatic OTP retrieval. Use "android" for the SMS Retriever
          # API or "web" for the WebOTP API.
          module Platform
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANDROID =
              T.let(
                :android,
                PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol
              )
            WEB =
              T.let(
                :web,
                PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::VerificationCreateParams::Options::AppRealm::Platform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module Channel
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::VerificationCreateParams::Options::Channel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              PreludeSDK::VerificationCreateParams::Options::Channel::TaggedSymbol
            )
          RCS =
            T.let(
              :rcs,
              PreludeSDK::VerificationCreateParams::Options::Channel::TaggedSymbol
            )
          WHATSAPP =
            T.let(
              :whatsapp,
              PreludeSDK::VerificationCreateParams::Options::Channel::TaggedSymbol
            )
          VIBER =
            T.let(
              :viber,
              PreludeSDK::VerificationCreateParams::Options::Channel::TaggedSymbol
            )
          ZALO =
            T.let(
              :zalo,
              PreludeSDK::VerificationCreateParams::Options::Channel::TaggedSymbol
            )
          TELEGRAM =
            T.let(
              :telegram,
              PreludeSDK::VerificationCreateParams::Options::Channel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::VerificationCreateParams::Options::Channel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The method used for verifying this phone number. The 'voice' option provides an
        # accessible alternative for visually impaired users by delivering the
        # verification code through a phone call rather than a text message. It also
        # allows verification of landline numbers that cannot receive SMS messages. The
        # 'message' option explicitly requests message delivery (SMS, WhatsApp ...) and
        # skips silent verification, useful for scenarios requiring direct user
        # interaction.
        module Method
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::VerificationCreateParams::Options::Method
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUTO =
            T.let(
              :auto,
              PreludeSDK::VerificationCreateParams::Options::Method::TaggedSymbol
            )
          VOICE =
            T.let(
              :voice,
              PreludeSDK::VerificationCreateParams::Options::Method::TaggedSymbol
            )
          MESSAGE =
            T.let(
              :message,
              PreludeSDK::VerificationCreateParams::Options::Method::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::VerificationCreateParams::Options::Method::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The channel to prioritize when delivering the verification. Prelude prioritizes
        # this channel on the first attempt and continues to prefer it on retries while an
        # untried route on that channel remains; once those are exhausted, retries fall
        # back to the next best available route. If the channel is unavailable (for
        # example, when a verification is challenged), Prelude uses the best available
        # route instead. Cannot be combined with `channels`.
        module PreferredChannel
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::VerificationCreateParams::Options::PreferredChannel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          RCS =
            T.let(
              :rcs,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          WHATSAPP =
            T.let(
              :whatsapp,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          VIBER =
            T.let(
              :viber,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          ZALO =
            T.let(
              :zalo,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )
          TELEGRAM =
            T.let(
              :telegram,
              PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::VerificationCreateParams::Options::PreferredChannel::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
