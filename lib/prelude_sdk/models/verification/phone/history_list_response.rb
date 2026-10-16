# frozen_string_literal: true

module PreludeSDK
  module Models
    module Verification
      module Phone
        # @see PreludeSDK::Resources::Verification::Phone::History#list
        class HistoryListResponse < PreludeSDK::Internal::Type::BaseModel
          # @!attribute verifications
          #   The page of verifications, most recent first.
          #
          #   @return [Array<PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification>]
          required :verifications,
                   -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification] }

          # @!attribute next_cursor
          #   Pagination cursor for the next page of results. Omitted if there are no more
          #   pages.
          #
          #   @return [String, nil]
          optional :next_cursor, String

          # @!method initialize(verifications:, next_cursor: nil)
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::Verification::Phone::HistoryListResponse} for more details.
          #
          #   @param verifications [Array<PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification>] The page of verifications, most recent first.
          #
          #   @param next_cursor [String] Pagination cursor for the next page of results. Omitted if there are no more pag

          class Verification < PreludeSDK::Internal::Type::BaseModel
            # @!attribute id
            #   The verification identifier.
            #
            #   @return [String]
            required :id, String

            # @!attribute channels
            #   The channels the verification could use, and which one the end user converted
            #   through. Empty when the verification used only channels this API does not list.
            #
            #   @return [Array<PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel>]
            required :channels,
                     -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel] }

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute delivered
            #   Whether at least one message was reported delivered.
            #
            #   @return [Boolean]
            required :delivered, PreludeSDK::Internal::Type::Boolean

            # @!attribute phone_number
            #   The E.164 phone number the verification targeted.
            #
            #   @return [String]
            required :phone_number, String

            # @!attribute status
            #   The outcome of the verification.
            #
            #   - `converted` - The end user submitted a valid code.
            #   - `not_converted` - The verification expired without a valid code.
            #   - `pending_check` - A code was delivered and Prelude is still waiting for a
            #     check.
            #   - `sent` - A code was sent and the verification window is still open.
            #   - `challenged` - The verification was restricted to non-SMS and non-voice
            #     channels.
            #   - `suspected_fraud` - The anti-fraud system blocked the verification.
            #   - `in_blocklist` - The phone number is on the configured block list.
            #   - `invalid_line` - The phone number is not a valid line type.
            #   - `invalid_number` - The phone number is not a valid number.
            #   - `rate_limited` - The verification was refused by a rate limit.
            #   - `expired_signals` - The SDK signals were collected too long before the request
            #     to still attest to it.
            #   - `shadowed` - The anti-fraud system flagged the verification without blocking
            #     it.
            #
            #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status]
            required :status,
                     enum: -> { PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status }

            # @!attribute attempts
            #   Number of messages sent for the verification, `0` when none was. Absent for
            #   sandboxed phone numbers.
            #
            #   @return [Integer, nil]
            optional :attempts, Integer

            # @!attribute converted_at
            #   When the end user submitted a valid code. Absent unless the verification
            #   converted.
            #
            #   @return [Time, nil]
            optional :converted_at, Time

            # @!attribute cost
            #   Total cost of the verification. Absent when nothing was billed.
            #
            #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney, nil]
            optional :cost, -> { PreludeSDK::Verification::Phone::PhoneVerificationMoney }

            # @!attribute device_platform
            #   Platform of the end-user device, when known.
            #
            #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform, nil]
            optional :device_platform,
                     enum: -> { PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform }

            # @!attribute phone_number_condition
            #   Whether the phone number was allow-listed, block-listed, or sandboxed at
            #   verification time.
            #
            #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition, nil]
            optional :phone_number_condition,
                     enum: -> { PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition }

            # @!attribute signals_hash_status
            #   Whether the SDK signals integrity check passed.
            #
            #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus, nil]
            optional :signals_hash_status,
                     enum: -> { PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus }

            # @!method initialize(id:, channels:, created_at:, delivered:, phone_number:, status:, attempts: nil, converted_at: nil, cost: nil, device_platform: nil, phone_number_condition: nil, signals_hash_status: nil)
            #   Some parameter documentations has been truncated, see
            #   {PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification} for
            #   more details.
            #
            #   One entry of the verification history.
            #   [Get a phone verification](/verify/v2/api-reference/history/get-a-phone-verification)
            #   returns the full record.
            #
            #   @param id [String] The verification identifier.
            #
            #   @param channels [Array<PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel>] The channels the verification could use, and which one the end user converted th
            #
            #   @param created_at [Time]
            #
            #   @param delivered [Boolean] Whether at least one message was reported delivered.
            #
            #   @param phone_number [String] The E.164 phone number the verification targeted.
            #
            #   @param status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Status] The outcome of the verification.
            #
            #   @param attempts [Integer] Number of messages sent for the verification, `0` when none was. Absent for sand
            #
            #   @param converted_at [Time] When the end user submitted a valid code. Absent unless the verification convert
            #
            #   @param cost [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney] Total cost of the verification. Absent when nothing was billed.
            #
            #   @param device_platform [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::DevicePlatform] Platform of the end-user device, when known.
            #
            #   @param phone_number_condition [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::PhoneNumberCondition] Whether the phone number was allow-listed, block-listed, or sandboxed at verific
            #
            #   @param signals_hash_status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::SignalsHashStatus] Whether the SDK signals integrity check passed.

            class Channel < PreludeSDK::Internal::Type::BaseModel
              # @!attribute channel
              #
              #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel]
              required :channel,
                       enum: -> { PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel }

              # @!attribute converted
              #   Whether the end user submitted a valid code received through this channel.
              #
              #   @return [Boolean]
              required :converted, PreludeSDK::Internal::Type::Boolean

              # @!method initialize(channel:, converted:)
              #   @param channel [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel::Channel]
              #
              #   @param converted [Boolean] Whether the end user submitted a valid code received through this channel.

              # @see PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification::Channel#channel
              module Channel
                extend PreludeSDK::Internal::Type::Enum

                SMS = :sms
                RCS = :rcs
                WHATSAPP = :whatsapp
                VIBER = :viber
                ZALO = :zalo
                TELEGRAM = :telegram
                VOICE = :voice
                SILENT = :silent

                # @!method self.values
                #   @return [Array<Symbol>]
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
            # - `expired_signals` - The SDK signals were collected too long before the request
            #   to still attest to it.
            # - `shadowed` - The anti-fraud system flagged the verification without blocking
            #   it.
            #
            # @see PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification#status
            module Status
              extend PreludeSDK::Internal::Type::Enum

              CONVERTED = :converted
              NOT_CONVERTED = :not_converted
              PENDING_CHECK = :pending_check
              SENT = :sent
              CHALLENGED = :challenged
              SUSPECTED_FRAUD = :suspected_fraud
              IN_BLOCKLIST = :in_blocklist
              INVALID_LINE = :invalid_line
              INVALID_NUMBER = :invalid_number
              RATE_LIMITED = :rate_limited
              EXPIRED_SIGNALS = :expired_signals
              SHADOWED = :shadowed

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Platform of the end-user device, when known.
            #
            # @see PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification#device_platform
            module DevicePlatform
              extend PreludeSDK::Internal::Type::Enum

              ANDROID = :android
              IOS = :ios
              IPADOS = :ipados
              TVOS = :tvos
              WEB = :web

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Whether the phone number was allow-listed, block-listed, or sandboxed at
            # verification time.
            #
            # @see PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification#phone_number_condition
            module PhoneNumberCondition
              extend PreludeSDK::Internal::Type::Enum

              ALLOW_LISTED = :allow_listed
              BLOCK_LISTED = :block_listed
              SANDBOXED = :sandboxed

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Whether the SDK signals integrity check passed.
            #
            # @see PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification#signals_hash_status
            module SignalsHashStatus
              extend PreludeSDK::Internal::Type::Enum

              VALID = :valid
              INVALID = :invalid

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
