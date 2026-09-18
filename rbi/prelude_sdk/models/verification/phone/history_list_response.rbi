# typed: strong

module PreludeSDK
  module Models
    module Verification
      module Phone
        class HistoryListResponse < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Models::Verification::Phone::HistoryListResponse,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The page of verifications, most recent first.
          sig do
            returns(
              T::Array[
                PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification
              ]
            )
          end
          attr_accessor :verifications

          # Pagination cursor for the next page of results. Omitted if there are no more
          # pages.
          sig { returns(T.nilable(String)) }
          attr_reader :next_cursor

          sig { params(next_cursor: String).void }
          attr_writer :next_cursor

          sig do
            params(
              verifications:
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::OrHash
                ],
              next_cursor: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The page of verifications, most recent first.
            verifications:,
            # Pagination cursor for the next page of results. Omitted if there are no more
            # pages.
            next_cursor: nil
          )
          end

          sig do
            override.returns(
              {
                verifications:
                  T::Array[
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification
                  ],
                next_cursor: String
              }
            )
          end
          def to_hash
          end

          class Verification < PreludeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification,
                  PreludeSDK::Internal::AnyHash
                )
              end

            # The verification identifier.
            sig { returns(String) }
            attr_accessor :id

            # The channels the verification could use, and which one the end user converted
            # through. Empty when the verification used only channels this API does not list.
            sig do
              returns(
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel
                ]
              )
            end
            attr_accessor :channels

            sig { returns(Time) }
            attr_accessor :created_at

            # Whether at least one message was reported delivered.
            sig { returns(T::Boolean) }
            attr_accessor :delivered

            # The E.164 phone number the verification targeted.
            sig { returns(String) }
            attr_accessor :phone_number

            # The outcome of the verification.
            #
            # - `converted` - The end user submitted a valid code.
            # - `not_converted` - The verification expired without a valid code.
            # - `pending_check` - A code was delivered and Prelude is still waiting for a
            #   check.
            # - `sent` - A code was sent and the verification window is still open.
            # - `challenged` - The verification was restricted to non-SMS and non-voice
            #   channels.
            # - `suspected_fraud` - The anti-fraud system blocked the verification.
            # - `in_blocklist` - The phone number is on the configured block list.
            # - `invalid_line` - The phone number is not a valid line type.
            # - `invalid_number` - The phone number is not a valid number.
            # - `rate_limited` - The verification was refused by a rate limit.
            # - `expired_signals` - The SDK signals were collected too long before the
            #   request.
            # - `shadowed` - The anti-fraud system flagged the verification without blocking
            #   it.
            sig do
              returns(
                PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
              )
            end
            attr_accessor :status

            # Number of messages sent for the verification, `0` when none was. Absent for
            # sandboxed phone numbers.
            sig { returns(T.nilable(Integer)) }
            attr_reader :attempts

            sig { params(attempts: Integer).void }
            attr_writer :attempts

            # When the end user submitted a valid code. Absent unless the verification
            # converted.
            sig { returns(T.nilable(Time)) }
            attr_reader :converted_at

            sig { params(converted_at: Time).void }
            attr_writer :converted_at

            # Total cost of the verification. Absent when nothing was billed.
            sig do
              returns(
                T.nilable(
                  PreludeSDK::Verification::Phone::PhoneVerificationMoney
                )
              )
            end
            attr_reader :cost

            sig do
              params(
                cost:
                  PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash
              ).void
            end
            attr_writer :cost

            # Platform of the end-user device, when known.
            sig do
              returns(
                T.nilable(
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::TaggedSymbol
                )
              )
            end
            attr_reader :device_platform

            sig do
              params(
                device_platform:
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::OrSymbol
              ).void
            end
            attr_writer :device_platform

            # Whether the phone number was allow-listed, block-listed, or sandboxed at
            # verification time.
            sig do
              returns(
                T.nilable(
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition::TaggedSymbol
                )
              )
            end
            attr_reader :phone_number_condition

            sig do
              params(
                phone_number_condition:
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition::OrSymbol
              ).void
            end
            attr_writer :phone_number_condition

            # Whether the SDK signals integrity check passed.
            sig do
              returns(
                T.nilable(
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus::TaggedSymbol
                )
              )
            end
            attr_reader :signals_hash_status

            sig do
              params(
                signals_hash_status:
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus::OrSymbol
              ).void
            end
            attr_writer :signals_hash_status

            # One entry of the verification history.
            # [Get a phone verification](/verify/v2/api-reference/history/get-a-phone-verification)
            # returns the full record.
            sig do
              params(
                id: String,
                channels:
                  T::Array[
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::OrHash
                  ],
                created_at: Time,
                delivered: T::Boolean,
                phone_number: String,
                status:
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::OrSymbol,
                attempts: Integer,
                converted_at: Time,
                cost:
                  PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash,
                device_platform:
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::OrSymbol,
                phone_number_condition:
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition::OrSymbol,
                signals_hash_status:
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The verification identifier.
              id:,
              # The channels the verification could use, and which one the end user converted
              # through. Empty when the verification used only channels this API does not list.
              channels:,
              created_at:,
              # Whether at least one message was reported delivered.
              delivered:,
              # The E.164 phone number the verification targeted.
              phone_number:,
              # The outcome of the verification.
              #
              # - `converted` - The end user submitted a valid code.
              # - `not_converted` - The verification expired without a valid code.
              # - `pending_check` - A code was delivered and Prelude is still waiting for a
              #   check.
              # - `sent` - A code was sent and the verification window is still open.
              # - `challenged` - The verification was restricted to non-SMS and non-voice
              #   channels.
              # - `suspected_fraud` - The anti-fraud system blocked the verification.
              # - `in_blocklist` - The phone number is on the configured block list.
              # - `invalid_line` - The phone number is not a valid line type.
              # - `invalid_number` - The phone number is not a valid number.
              # - `rate_limited` - The verification was refused by a rate limit.
              # - `expired_signals` - The SDK signals were collected too long before the
              #   request.
              # - `shadowed` - The anti-fraud system flagged the verification without blocking
              #   it.
              status:,
              # Number of messages sent for the verification, `0` when none was. Absent for
              # sandboxed phone numbers.
              attempts: nil,
              # When the end user submitted a valid code. Absent unless the verification
              # converted.
              converted_at: nil,
              # Total cost of the verification. Absent when nothing was billed.
              cost: nil,
              # Platform of the end-user device, when known.
              device_platform: nil,
              # Whether the phone number was allow-listed, block-listed, or sandboxed at
              # verification time.
              phone_number_condition: nil,
              # Whether the SDK signals integrity check passed.
              signals_hash_status: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  channels:
                    T::Array[
                      PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel
                    ],
                  created_at: Time,
                  delivered: T::Boolean,
                  phone_number: String,
                  status:
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol,
                  attempts: Integer,
                  converted_at: Time,
                  cost: PreludeSDK::Verification::Phone::PhoneVerificationMoney,
                  device_platform:
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::TaggedSymbol,
                  phone_number_condition:
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition::TaggedSymbol,
                  signals_hash_status:
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            class Channel < PreludeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel,
                    PreludeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                )
              end
              attr_accessor :channel

              # Whether the end user submitted a valid code received through this channel.
              sig { returns(T::Boolean) }
              attr_accessor :converted

              sig do
                params(
                  channel:
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::OrSymbol,
                  converted: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(
                channel:,
                # Whether the end user submitted a valid code received through this channel.
                converted:
              )
              end

              sig do
                override.returns(
                  {
                    channel:
                      PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol,
                    converted: T::Boolean
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
                      PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SMS =
                  T.let(
                    :sms,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                  )
                RCS =
                  T.let(
                    :rcs,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                  )
                WHATSAPP =
                  T.let(
                    :whatsapp,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                  )
                VIBER =
                  T.let(
                    :viber,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                  )
                ZALO =
                  T.let(
                    :zalo,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                  )
                TELEGRAM =
                  T.let(
                    :telegram,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                  )
                VOICE =
                  T.let(
                    :voice,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                  )
                SILENT =
                  T.let(
                    :silent,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            # The outcome of the verification.
            #
            # - `converted` - The end user submitted a valid code.
            # - `not_converted` - The verification expired without a valid code.
            # - `pending_check` - A code was delivered and Prelude is still waiting for a
            #   check.
            # - `sent` - A code was sent and the verification window is still open.
            # - `challenged` - The verification was restricted to non-SMS and non-voice
            #   channels.
            # - `suspected_fraud` - The anti-fraud system blocked the verification.
            # - `in_blocklist` - The phone number is on the configured block list.
            # - `invalid_line` - The phone number is not a valid line type.
            # - `invalid_number` - The phone number is not a valid number.
            # - `rate_limited` - The verification was refused by a rate limit.
            # - `expired_signals` - The SDK signals were collected too long before the
            #   request.
            # - `shadowed` - The anti-fraud system flagged the verification without blocking
            #   it.
            module Status
              extend PreludeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CONVERTED =
                T.let(
                  :converted,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              NOT_CONVERTED =
                T.let(
                  :not_converted,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              PENDING_CHECK =
                T.let(
                  :pending_check,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              SENT =
                T.let(
                  :sent,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              CHALLENGED =
                T.let(
                  :challenged,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              SUSPECTED_FRAUD =
                T.let(
                  :suspected_fraud,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              IN_BLOCKLIST =
                T.let(
                  :in_blocklist,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              INVALID_LINE =
                T.let(
                  :invalid_line,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              INVALID_NUMBER =
                T.let(
                  :invalid_number,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              RATE_LIMITED =
                T.let(
                  :rate_limited,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              EXPIRED_SIGNALS =
                T.let(
                  :expired_signals,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )
              SHADOWED =
                T.let(
                  :shadowed,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Platform of the end-user device, when known.
            module DevicePlatform
              extend PreludeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ANDROID =
                T.let(
                  :android,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::TaggedSymbol
                )
              IOS =
                T.let(
                  :ios,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::TaggedSymbol
                )
              IPADOS =
                T.let(
                  :ipados,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::TaggedSymbol
                )
              TVOS =
                T.let(
                  :tvos,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::TaggedSymbol
                )
              WEB =
                T.let(
                  :web,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Whether the phone number was allow-listed, block-listed, or sandboxed at
            # verification time.
            module PhoneNumberCondition
              extend PreludeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALLOW_LISTED =
                T.let(
                  :allow_listed,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition::TaggedSymbol
                )
              BLOCK_LISTED =
                T.let(
                  :block_listed,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition::TaggedSymbol
                )
              SANDBOXED =
                T.let(
                  :sandboxed,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # Whether the SDK signals integrity check passed.
            module SignalsHashStatus
              extend PreludeSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              VALID =
                T.let(
                  :valid,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus::TaggedSymbol
                )
              INVALID =
                T.let(
                  :invalid,
                  PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus::TaggedSymbol
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
end
