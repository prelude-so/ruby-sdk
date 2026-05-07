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
      #   - `invalid_signature` - The signature of the SDK signals is invalid.
      #   - `repeated_attempts` - The phone number has made too many verification
      #     attempts.
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
      #   - `behavioral_pattern` - The phone number past behavior during verification
      #     flows exhibits suspicious patterns.
      #   - `device_attribute` - The device exhibits characteristics associated with
      #     suspicious activity patterns.
      #   - `fraud_database` - The phone number has been flagged as suspicious in one or
      #     more of our fraud databases.
      #   - `location_discrepancy` - The phone number prefix and IP address discrepancy
      #     indicates potential fraud.
      #   - `network_fingerprint` - The network connection exhibits characteristics
      #     associated with suspicious activity patterns.
      #   - `poor_conversion_history` - The phone number has a history of poorly
      #     converting to a verified phone number.
      #   - `prefix_concentration` - The phone number is part of a range known to be
      #     associated with suspicious activity patterns.
      #   - `suspected_request_tampering` - The SDK signature is invalid and the request
      #     is considered to be tampered with.
      #   - `suspicious_ip_address` - The IP address is deemed to be associated with
      #     suspicious activity patterns.
      #   - `temporary_phone_number` - The phone number is known to be a temporary or
      #     disposable number.
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
      # - `invalid_signature` - The signature of the SDK signals is invalid.
      # - `repeated_attempts` - The phone number has made too many verification
      #   attempts.
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

        BEHAVIORAL_PATTERN = :behavioral_pattern
        DEVICE_ATTRIBUTE = :device_attribute
        FRAUD_DATABASE = :fraud_database
        LOCATION_DISCREPANCY = :location_discrepancy
        NETWORK_FINGERPRINT = :network_fingerprint
        POOR_CONVERSION_HISTORY = :poor_conversion_history
        PREFIX_CONCENTRATION = :prefix_concentration
        SUSPECTED_REQUEST_TAMPERING = :suspected_request_tampering
        SUSPICIOUS_IP_ADDRESS = :suspicious_ip_address
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
