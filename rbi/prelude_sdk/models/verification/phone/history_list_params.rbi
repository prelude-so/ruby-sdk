# typed: strong

module PreludeSDK
  module Models
    module Verification
      module Phone
        class HistoryListParams < PreludeSDK::Internal::Type::BaseModel
          extend PreludeSDK::Internal::Type::RequestParameters::Converter
          include PreludeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Verification::Phone::HistoryListParams,
                PreludeSDK::Internal::AnyHash
              )
            end

          # Only verifications that could use one of these channels. Repeat the parameter
          # for several values.
          sig do
            returns(
              T.nilable(
                T::Array[
                  PreludeSDK::Verification::Phone::HistoryListParams::Channel::OrSymbol
                ]
              )
            )
          end
          attr_reader :channels

          sig do
            params(
              channels:
                T::Array[
                  PreludeSDK::Verification::Phone::HistoryListParams::Channel::OrSymbol
                ]
            ).void
          end
          attr_writer :channels

          # Pagination cursor from the previous response.
          sig { returns(T.nilable(String)) }
          attr_reader :cursor

          sig { params(cursor: String).void }
          attr_writer :cursor

          # Only verifications created from this device platform.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::OrSymbol
              )
            )
          end
          attr_reader :device_platform

          sig do
            params(
              device_platform:
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::OrSymbol
            ).void
          end
          attr_writer :device_platform

          # Only verifications created at or after this RFC 3339 timestamp. Goes with `to`,
          # at most 6 months apart. Without them the whole history is searched.
          sig { returns(T.nilable(Time)) }
          attr_reader :from

          sig { params(from: Time).void }
          attr_writer :from

          # Maximum number of verifications to return per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          # Only verifications that sent at most this many messages. `0` keeps the
          # verifications that never sent one.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_attempts

          sig { params(max_attempts: Integer).void }
          attr_writer :max_attempts

          # Only verifications that sent at least this many messages.
          sig { returns(T.nilable(Integer)) }
          attr_reader :min_attempts

          sig { params(min_attempts: Integer).void }
          attr_writer :min_attempts

          # Only verifications targeting this E.164 phone number. The leading `+` may be
          # omitted.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Only verifications of phone numbers from this region, as an ISO 3166-1 alpha-2
          # code.
          sig { returns(T.nilable(String)) }
          attr_reader :region

          sig { params(region: String).void }
          attr_writer :region

          # Only verifications in this status. `pending_check` cannot be filtered on.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Verification::Phone::HistoryListParams::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                PreludeSDK::Verification::Phone::HistoryListParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Only verifications sent with this template, as returned in `template_id` by
          # [Get a phone verification](/verify/v2/api-reference/history/get-a-phone-verification).
          # Built-in templates (`prelude:*`) cannot be filtered on.
          sig { returns(T.nilable(String)) }
          attr_reader :template_id

          sig { params(template_id: String).void }
          attr_writer :template_id

          # Only verifications created at or before this RFC 3339 timestamp. Goes with
          # `from`.
          sig { returns(T.nilable(Time)) }
          attr_reader :to

          sig { params(to: Time).void }
          attr_writer :to

          sig do
            params(
              channels:
                T::Array[
                  PreludeSDK::Verification::Phone::HistoryListParams::Channel::OrSymbol
                ],
              cursor: String,
              device_platform:
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::OrSymbol,
              from: Time,
              limit: Integer,
              max_attempts: Integer,
              min_attempts: Integer,
              phone_number: String,
              region: String,
              status:
                PreludeSDK::Verification::Phone::HistoryListParams::Status::OrSymbol,
              template_id: String,
              to: Time,
              request_options: PreludeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Only verifications that could use one of these channels. Repeat the parameter
            # for several values.
            channels: nil,
            # Pagination cursor from the previous response.
            cursor: nil,
            # Only verifications created from this device platform.
            device_platform: nil,
            # Only verifications created at or after this RFC 3339 timestamp. Goes with `to`,
            # at most 6 months apart. Without them the whole history is searched.
            from: nil,
            # Maximum number of verifications to return per page.
            limit: nil,
            # Only verifications that sent at most this many messages. `0` keeps the
            # verifications that never sent one.
            max_attempts: nil,
            # Only verifications that sent at least this many messages.
            min_attempts: nil,
            # Only verifications targeting this E.164 phone number. The leading `+` may be
            # omitted.
            phone_number: nil,
            # Only verifications of phone numbers from this region, as an ISO 3166-1 alpha-2
            # code.
            region: nil,
            # Only verifications in this status. `pending_check` cannot be filtered on.
            status: nil,
            # Only verifications sent with this template, as returned in `template_id` by
            # [Get a phone verification](/verify/v2/api-reference/history/get-a-phone-verification).
            # Built-in templates (`prelude:*`) cannot be filtered on.
            template_id: nil,
            # Only verifications created at or before this RFC 3339 timestamp. Goes with
            # `from`.
            to: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                channels:
                  T::Array[
                    PreludeSDK::Verification::Phone::HistoryListParams::Channel::OrSymbol
                  ],
                cursor: String,
                device_platform:
                  PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::OrSymbol,
                from: Time,
                limit: Integer,
                max_attempts: Integer,
                min_attempts: Integer,
                phone_number: String,
                region: String,
                status:
                  PreludeSDK::Verification::Phone::HistoryListParams::Status::OrSymbol,
                template_id: String,
                to: Time,
                request_options: PreludeSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Channel
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Verification::Phone::HistoryListParams::Channel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SMS =
              T.let(
                :sms,
                PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
              )
            RCS =
              T.let(
                :rcs,
                PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
              )
            WHATSAPP =
              T.let(
                :whatsapp,
                PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
              )
            VIBER =
              T.let(
                :viber,
                PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
              )
            ZALO =
              T.let(
                :zalo,
                PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
              )
            TELEGRAM =
              T.let(
                :telegram,
                PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
              )
            VOICE =
              T.let(
                :voice,
                PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
              )
            SILENT =
              T.let(
                :silent,
                PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Verification::Phone::HistoryListParams::Channel::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Only verifications created from this device platform.
          module DevicePlatform
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANDROID =
              T.let(
                :android,
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::TaggedSymbol
              )
            IOS =
              T.let(
                :ios,
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::TaggedSymbol
              )
            IPADOS =
              T.let(
                :ipados,
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::TaggedSymbol
              )
            TVOS =
              T.let(
                :tvos,
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::TaggedSymbol
              )
            WEB =
              T.let(
                :web,
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Only verifications in this status. `pending_check` cannot be filtered on.
          module Status
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Verification::Phone::HistoryListParams::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONVERTED =
              T.let(
                :converted,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            NOT_CONVERTED =
              T.let(
                :not_converted,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            PENDING_CHECK =
              T.let(
                :pending_check,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            SENT =
              T.let(
                :sent,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            CHALLENGED =
              T.let(
                :challenged,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            SUSPECTED_FRAUD =
              T.let(
                :suspected_fraud,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            IN_BLOCKLIST =
              T.let(
                :in_blocklist,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            INVALID_LINE =
              T.let(
                :invalid_line,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            INVALID_NUMBER =
              T.let(
                :invalid_number,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            RATE_LIMITED =
              T.let(
                :rate_limited,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            EXPIRED_SIGNALS =
              T.let(
                :expired_signals,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )
            SHADOWED =
              T.let(
                :shadowed,
                PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Verification::Phone::HistoryListParams::Status::TaggedSymbol
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
end
