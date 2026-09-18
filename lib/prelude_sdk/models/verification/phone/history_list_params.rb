# frozen_string_literal: true

module PreludeSDK
  module Models
    module Verification
      module Phone
        # @see PreludeSDK::Resources::Verification::Phone::History#list
        class HistoryListParams < PreludeSDK::Internal::Type::BaseModel
          extend PreludeSDK::Internal::Type::RequestParameters::Converter
          include PreludeSDK::Internal::Type::RequestParameters

          # @!attribute channels
          #   Only verifications that could use one of these channels. Repeat the parameter
          #   for several values.
          #
          #   @return [Array<Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::Channel>, nil]
          optional :channels,
                   -> { PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::Verification::Phone::HistoryListParams::Channel] }

          # @!attribute cursor
          #   Pagination cursor from the previous response.
          #
          #   @return [String, nil]
          optional :cursor, String

          # @!attribute device_platform
          #   Only verifications created from this device platform.
          #
          #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::DevicePlatform, nil]
          optional :device_platform, enum: -> { PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform }

          # @!attribute from
          #   Only verifications created at or after this RFC 3339 timestamp. Goes with `to`,
          #   at most 6 months apart. Without them the whole history is searched.
          #
          #   @return [Time, nil]
          optional :from, Time

          # @!attribute limit
          #   Maximum number of verifications to return per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute max_attempts
          #   Only verifications that sent at most this many messages. `0` keeps the
          #   verifications that never sent one.
          #
          #   @return [Integer, nil]
          optional :max_attempts, Integer

          # @!attribute min_attempts
          #   Only verifications that sent at least this many messages.
          #
          #   @return [Integer, nil]
          optional :min_attempts, Integer

          # @!attribute phone_number
          #   Only verifications targeting this E.164 phone number. The leading `+` may be
          #   omitted.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute region
          #   Only verifications of phone numbers from this region, as an ISO 3166-1 alpha-2
          #   code.
          #
          #   @return [String, nil]
          optional :region, String

          # @!attribute status
          #   Only verifications in this status. `pending_check` cannot be filtered on.
          #
          #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::Status, nil]
          optional :status, enum: -> { PreludeSDK::Verification::Phone::HistoryListParams::Status }

          # @!attribute template_id
          #   Only verifications sent with this template, as returned in `template_id` by
          #   [Get a phone verification](/verify/v2/api-reference/history/get-a-phone-verification).
          #   Built-in templates (`prelude:*`) cannot be filtered on.
          #
          #   @return [String, nil]
          optional :template_id, String

          # @!attribute to
          #   Only verifications created at or before this RFC 3339 timestamp. Goes with
          #   `from`.
          #
          #   @return [Time, nil]
          optional :to, Time

          # @!method initialize(channels: nil, cursor: nil, device_platform: nil, from: nil, limit: nil, max_attempts: nil, min_attempts: nil, phone_number: nil, region: nil, status: nil, template_id: nil, to: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::Verification::Phone::HistoryListParams} for more details.
          #
          #   @param channels [Array<Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::Channel>] Only verifications that could use one of these channels. Repeat the parameter fo
          #
          #   @param cursor [String] Pagination cursor from the previous response.
          #
          #   @param device_platform [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::DevicePlatform] Only verifications created from this device platform.
          #
          #   @param from [Time] Only verifications created at or after this RFC 3339 timestamp. Goes with `to`,
          #
          #   @param limit [Integer] Maximum number of verifications to return per page.
          #
          #   @param max_attempts [Integer] Only verifications that sent at most this many messages. `0` keeps the verificat
          #
          #   @param min_attempts [Integer] Only verifications that sent at least this many messages.
          #
          #   @param phone_number [String] Only verifications targeting this E.164 phone number. The leading `+` may be omi
          #
          #   @param region [String] Only verifications of phone numbers from this region, as an ISO 3166-1 alpha-2 c
          #
          #   @param status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::Status] Only verifications in this status. `pending_check` cannot be filtered on.
          #
          #   @param template_id [String] Only verifications sent with this template, as returned in `template_id` by [Get
          #
          #   @param to [Time] Only verifications created at or before this RFC 3339 timestamp. Goes with `from
          #
          #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

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

          # Only verifications created from this device platform.
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

          # Only verifications in this status. `pending_check` cannot be filtered on.
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
        end
      end
    end
  end
end
