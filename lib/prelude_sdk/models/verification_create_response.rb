# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Verification#create
    class VerificationCreateResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The verification identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute verification_method
      #   The method used for verifying this phone number.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method]
      required :verification_method,
               enum: -> { PreludeSDK::Models::VerificationCreateResponse::Method },
               api_name: :method

      # @!attribute status
      #   The status of the verification.
      #
      #   - `success` - A new verification window was created.
      #   - `retry` - A new attempt was created for an existing verification window.
      #   - `challenged` - The verification is suspicious and is restricted to non-SMS and
      #     non-voice channels only. This mode must be enabled for your customer account
      #     by Prelude support.
      #   - `blocked` - The verification was blocked.
      #   - `shadow_blocked` - The verification triggered a block rule but the decision
      #     was not enforced; this is used to dry-run anti-fraud configuration. This mode
      #     must be enabled for your customer account by Prelude support.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::VerificationCreateResponse::Status }

      # @!attribute channels
      #   The ordered sequence of channels to be used for verification
      #
      #   @return [Array<Symbol, PreludeSDK::Models::VerificationCreateResponse::Channel>, nil]
      optional :channels,
               -> { PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::Models::VerificationCreateResponse::Channel] }

      # @!attribute metadata
      #   The metadata for this verification.
      #
      #   @return [PreludeSDK::Models::VerificationCreateResponse::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::VerificationCreateResponse::Metadata }

      # @!attribute reason
      #   The reason why the verification was blocked. Only present when status is
      #   "blocked" or "shadow_blocked".
      #
      #   - `expired_signature` - The signature of the SDK signals is expired. They should
      #     be sent within the hour following their collection.
      #   - `in_block_list` - The phone number is part of the configured block list.
      #   - `invalid_phone_line` - The phone number is not a valid line number (e.g.
      #     landline).
      #   - `invalid_phone_number` - The phone number is not a valid phone number (e.g.
      #     unallocated range).
      #   - `invalid_signature` - The SDK signature did not verify, so the request cannot
      #     be attributed to the device it claims to come from.
      #   - `repeated_attempts` - The phone number exceeded the allowed number of
      #     verification attempts in a short period.
      #   - `suspicious` - The verification attempt was deemed suspicious by the
      #     anti-fraud system.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationCreateResponse::Reason, nil]
      optional :reason, enum: -> { PreludeSDK::Models::VerificationCreateResponse::Reason }

      # @!attribute request_id
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute risk_factors
      #   The risk factors that contributed to the verification being blocked. Only
      #   present when status is "blocked" or "shadow_blocked" and the anti-fraud system
      #   detected specific risk signals.
      #
      #   - `automation_signature` - The request appears to come from an automated client
      #     rather than a person.
      #   - `carrier_not_permitted` - The destination carrier is one this account does not
      #     accept traffic for.
      #   - `client_fingerprint_mismatch` - The client does not appear to be the platform
      #     it identifies itself as.
      #   - `custom_policy` - A rule configured for your account matched this request.
      #   - `device_emulator` - The request appears to come from an emulator rather than a
      #     physical device.
      #   - `device_not_permitted` - The device platform is one your account blocks.
      #   - `device_reuse` - One device is driving verifications for an unusual number of
      #     phone numbers.
      #   - `expired_signals` - The SDK signals were collected too long before the request
      #     to still attest to it.
      #   - `fraud_database` - The phone number is flagged in one or more of the fraud
      #     databases Prelude consults.
      #   - `invalid_signature` - The SDK signature did not verify, so the request cannot
      #     be attributed to the device it claims to come from.
      #   - `ip_concentration` - The request shares its origin with an unusual volume of
      #     other verifications.
      #   - `ip_reputation` - The originating IP address is not trusted.
      #   - `location_mismatch` - The network location and the phone number's country are
      #     inconsistent.
      #   - `missing_signals` - The verification expected Prelude SDK signals and none
      #     arrived.
      #   - `number_range_abuse` - The phone number belongs to a range currently
      #     associated with abuse.
      #   - `poor_conversion_history` - Traffic resembling this request rarely completes a
      #     verification.
      #   - `proxy_network` - The request did not arrive over the subscriber's own access
      #     network.
      #   - `repeated_attempts` - The phone number exceeded the allowed number of
      #     verification attempts in a short period.
      #   - `temporary_phone_number` - The phone number belongs to a disposable or
      #     short-lived numbering service.
      #
      #   @return [Array<Symbol, PreludeSDK::Models::VerificationCreateResponse::RiskFactor>, nil]
      optional :risk_factors,
               -> { PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::Models::VerificationCreateResponse::RiskFactor] }

      # @!attribute silent
      #   The silent verification specific properties.
      #
      #   @return [PreludeSDK::Models::VerificationCreateResponse::Silent, nil]
      optional :silent, -> { PreludeSDK::Models::VerificationCreateResponse::Silent }

      # @!method initialize(id:, verification_method:, status:, channels: nil, metadata: nil, reason: nil, request_id: nil, risk_factors: nil, silent: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::VerificationCreateResponse} for more details.
      #
      #   @param id [String] The verification identifier.
      #
      #   @param verification_method [Symbol, PreludeSDK::Models::VerificationCreateResponse::Method] The method used for verifying this phone number.
      #
      #   @param status [Symbol, PreludeSDK::Models::VerificationCreateResponse::Status] The status of the verification.
      #
      #   @param channels [Array<Symbol, PreludeSDK::Models::VerificationCreateResponse::Channel>] The ordered sequence of channels to be used for verification
      #
      #   @param metadata [PreludeSDK::Models::VerificationCreateResponse::Metadata] The metadata for this verification.
      #
      #   @param reason [Symbol, PreludeSDK::Models::VerificationCreateResponse::Reason] The reason why the verification was blocked. Only present when status is "blocke
      #
      #   @param request_id [String]
      #
      #   @param risk_factors [Array<Symbol, PreludeSDK::Models::VerificationCreateResponse::RiskFactor>] The risk factors that contributed to the verification being blocked. Only presen
      #
      #   @param silent [PreludeSDK::Models::VerificationCreateResponse::Silent] The silent verification specific properties.

      # The method used for verifying this phone number.
      #
      # @see PreludeSDK::Models::VerificationCreateResponse#verification_method
      module Method
        extend PreludeSDK::Internal::Type::Enum

        EMAIL = :email
        MESSAGE = :message
        SILENT = :silent
        VOICE = :voice

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The status of the verification.
      #
      # - `success` - A new verification window was created.
      # - `retry` - A new attempt was created for an existing verification window.
      # - `challenged` - The verification is suspicious and is restricted to non-SMS and
      #   non-voice channels only. This mode must be enabled for your customer account
      #   by Prelude support.
      # - `blocked` - The verification was blocked.
      # - `shadow_blocked` - The verification triggered a block rule but the decision
      #   was not enforced; this is used to dry-run anti-fraud configuration. This mode
      #   must be enabled for your customer account by Prelude support.
      #
      # @see PreludeSDK::Models::VerificationCreateResponse#status
      module Status
        extend PreludeSDK::Internal::Type::Enum

        SUCCESS = :success
        RETRY = :retry
        CHALLENGED = :challenged
        BLOCKED = :blocked
        SHADOW_BLOCKED = :shadow_blocked

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module Channel
        extend PreludeSDK::Internal::Type::Enum

        RCS = :rcs
        SILENT = :silent
        SMS = :sms
        TELEGRAM = :telegram
        VIBER = :viber
        VOICE = :voice
        WHATSAPP = :whatsapp
        ZALO = :zalo

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see PreludeSDK::Models::VerificationCreateResponse#metadata
      class Metadata < PreludeSDK::Internal::Type::BaseModel
        # @!attribute correlation_id
        #   A user-defined identifier to correlate this verification with. It is returned in
        #   the response and any webhook events that refer to this verification.
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!method initialize(correlation_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::VerificationCreateResponse::Metadata} for more details.
        #
        #   The metadata for this verification.
        #
        #   @param correlation_id [String] A user-defined identifier to correlate this verification with. It is returned in
      end

      # The reason why the verification was blocked. Only present when status is
      # "blocked" or "shadow_blocked".
      #
      # - `expired_signature` - The signature of the SDK signals is expired. They should
      #   be sent within the hour following their collection.
      # - `in_block_list` - The phone number is part of the configured block list.
      # - `invalid_phone_line` - The phone number is not a valid line number (e.g.
      #   landline).
      # - `invalid_phone_number` - The phone number is not a valid phone number (e.g.
      #   unallocated range).
      # - `invalid_signature` - The SDK signature did not verify, so the request cannot
      #   be attributed to the device it claims to come from.
      # - `repeated_attempts` - The phone number exceeded the allowed number of
      #   verification attempts in a short period.
      # - `suspicious` - The verification attempt was deemed suspicious by the
      #   anti-fraud system.
      #
      # @see PreludeSDK::Models::VerificationCreateResponse#reason
      module Reason
        extend PreludeSDK::Internal::Type::Enum

        EXPIRED_SIGNATURE = :expired_signature
        IN_BLOCK_LIST = :in_block_list
        INVALID_PHONE_LINE = :invalid_phone_line
        INVALID_PHONE_NUMBER = :invalid_phone_number
        INVALID_SIGNATURE = :invalid_signature
        REPEATED_ATTEMPTS = :repeated_attempts
        SUSPICIOUS = :suspicious

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module RiskFactor
        extend PreludeSDK::Internal::Type::Enum

        AUTOMATION_SIGNATURE = :automation_signature
        CARRIER_NOT_PERMITTED = :carrier_not_permitted
        CLIENT_FINGERPRINT_MISMATCH = :client_fingerprint_mismatch
        CUSTOM_POLICY = :custom_policy
        DEVICE_EMULATOR = :device_emulator
        DEVICE_NOT_PERMITTED = :device_not_permitted
        DEVICE_REUSE = :device_reuse
        EXPIRED_SIGNALS = :expired_signals
        FRAUD_DATABASE = :fraud_database
        INVALID_SIGNATURE = :invalid_signature
        IP_CONCENTRATION = :ip_concentration
        IP_REPUTATION = :ip_reputation
        LOCATION_MISMATCH = :location_mismatch
        MISSING_SIGNALS = :missing_signals
        NUMBER_RANGE_ABUSE = :number_range_abuse
        POOR_CONVERSION_HISTORY = :poor_conversion_history
        PROXY_NETWORK = :proxy_network
        REPEATED_ATTEMPTS = :repeated_attempts
        TEMPORARY_PHONE_NUMBER = :temporary_phone_number

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see PreludeSDK::Models::VerificationCreateResponse#silent
      class Silent < PreludeSDK::Internal::Type::BaseModel
        # @!attribute request_url
        #   The URL to start the silent verification towards.
        #
        #   @return [String]
        required :request_url, String

        # @!method initialize(request_url:)
        #   The silent verification specific properties.
        #
        #   @param request_url [String] The URL to start the silent verification towards.
      end
    end
  end
end
