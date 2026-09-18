# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#predict
    class WatchPredictResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The prediction identifier.
      #
      #   @return [String]
      required :id, String

      # @!attribute prediction
      #   The prediction outcome.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction]
      required :prediction, enum: -> { PreludeSDK::Models::WatchPredictResponse::Prediction }

      # @!attribute request_id
      #   A string that identifies this specific request. Report it back to us to help us
      #   diagnose your issues.
      #
      #   @return [String]
      required :request_id, String

      # @!attribute risk_factors
      #   The risk factors that contributed to the suspicious prediction. Only present
      #   when prediction is "suspicious" and the anti-fraud system detected specific risk
      #   signals.
      #
      #   - `account_risk_profile` - The request matches a risk profile derived from the
      #     outcomes reported on your own account.
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
      #   @return [Array<Symbol, PreludeSDK::Models::WatchPredictResponse::RiskFactor>, nil]
      optional :risk_factors,
               -> { PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::Models::WatchPredictResponse::RiskFactor] }

      # @!method initialize(id:, prediction:, request_id:, risk_factors: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchPredictResponse} for more details.
      #
      #   @param id [String] The prediction identifier.
      #
      #   @param prediction [Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction] The prediction outcome.
      #
      #   @param request_id [String] A string that identifies this specific request. Report it back to us to help us
      #
      #   @param risk_factors [Array<Symbol, PreludeSDK::Models::WatchPredictResponse::RiskFactor>] The risk factors that contributed to the suspicious prediction. Only present whe

      # The prediction outcome.
      #
      # @see PreludeSDK::Models::WatchPredictResponse#prediction
      module Prediction
        extend PreludeSDK::Internal::Type::Enum

        LEGITIMATE = :legitimate
        SUSPICIOUS = :suspicious

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module RiskFactor
        extend PreludeSDK::Internal::Type::Enum

        ACCOUNT_RISK_PROFILE = :account_risk_profile
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
    end
  end
end
