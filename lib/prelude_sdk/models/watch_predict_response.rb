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
      #   - `account_risk_profile` - The target matches a risk profile derived from the
      #     outcomes reported on your own account, rather than from a signal shared across
      #     accounts.
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
    end
  end
end
