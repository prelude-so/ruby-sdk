# typed: strong

module PreludeSDK
  module Models
    class WatchPredictResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::WatchPredictResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The prediction identifier.
      sig { returns(String) }
      attr_accessor :id

      # The prediction outcome.
      sig do
        returns(
          PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol
        )
      end
      attr_accessor :prediction

      # A string that identifies this specific request. Report it back to us to help us
      # diagnose your issues.
      sig { returns(String) }
      attr_accessor :request_id

      # The risk factors that contributed to the suspicious prediction. Only present
      # when prediction is "suspicious" and the anti-fraud system detected specific risk
      # signals.
      #
      # - `behavioral_pattern` - The phone number past behavior during verification
      #   flows exhibits suspicious patterns.
      # - `device_attribute` - The device exhibits characteristics associated with
      #   suspicious activity patterns.
      # - `fraud_database` - The phone number has been flagged as suspicious in one or
      #   more of our fraud databases.
      # - `location_discrepancy` - The phone number prefix and IP address discrepancy
      #   indicates potential fraud.
      # - `network_fingerprint` - The network connection exhibits characteristics
      #   associated with suspicious activity patterns.
      # - `poor_conversion_history` - The phone number has a history of poorly
      #   converting to a verified phone number.
      # - `prefix_concentration` - The phone number is part of a range known to be
      #   associated with suspicious activity patterns.
      # - `suspected_request_tampering` - The SDK signature is invalid and the request
      #   is considered to be tampered with.
      # - `suspicious_ip_address` - The IP address is deemed to be associated with
      #   suspicious activity patterns.
      # - `temporary_phone_number` - The phone number is known to be a temporary or
      #   disposable number.
      sig do
        returns(
          T.nilable(
            T::Array[
              PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :risk_factors

      sig do
        params(
          risk_factors:
            T::Array[
              PreludeSDK::Models::WatchPredictResponse::RiskFactor::OrSymbol
            ]
        ).void
      end
      attr_writer :risk_factors

      sig do
        params(
          id: String,
          prediction:
            PreludeSDK::Models::WatchPredictResponse::Prediction::OrSymbol,
          request_id: String,
          risk_factors:
            T::Array[
              PreludeSDK::Models::WatchPredictResponse::RiskFactor::OrSymbol
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        # The prediction identifier.
        id:,
        # The prediction outcome.
        prediction:,
        # A string that identifies this specific request. Report it back to us to help us
        # diagnose your issues.
        request_id:,
        # The risk factors that contributed to the suspicious prediction. Only present
        # when prediction is "suspicious" and the anti-fraud system detected specific risk
        # signals.
        #
        # - `behavioral_pattern` - The phone number past behavior during verification
        #   flows exhibits suspicious patterns.
        # - `device_attribute` - The device exhibits characteristics associated with
        #   suspicious activity patterns.
        # - `fraud_database` - The phone number has been flagged as suspicious in one or
        #   more of our fraud databases.
        # - `location_discrepancy` - The phone number prefix and IP address discrepancy
        #   indicates potential fraud.
        # - `network_fingerprint` - The network connection exhibits characteristics
        #   associated with suspicious activity patterns.
        # - `poor_conversion_history` - The phone number has a history of poorly
        #   converting to a verified phone number.
        # - `prefix_concentration` - The phone number is part of a range known to be
        #   associated with suspicious activity patterns.
        # - `suspected_request_tampering` - The SDK signature is invalid and the request
        #   is considered to be tampered with.
        # - `suspicious_ip_address` - The IP address is deemed to be associated with
        #   suspicious activity patterns.
        # - `temporary_phone_number` - The phone number is known to be a temporary or
        #   disposable number.
        risk_factors: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            prediction:
              PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol,
            request_id: String,
            risk_factors:
              T::Array[
                PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
              ]
          }
        )
      end
      def to_hash
      end

      # The prediction outcome.
      module Prediction
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::Models::WatchPredictResponse::Prediction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEGITIMATE =
          T.let(
            :legitimate,
            PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol
          )
        SUSPICIOUS =
          T.let(
            :suspicious,
            PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::WatchPredictResponse::Prediction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module RiskFactor
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::Models::WatchPredictResponse::RiskFactor)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BEHAVIORAL_PATTERN =
          T.let(
            :behavioral_pattern,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        DEVICE_ATTRIBUTE =
          T.let(
            :device_attribute,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        FRAUD_DATABASE =
          T.let(
            :fraud_database,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        LOCATION_DISCREPANCY =
          T.let(
            :location_discrepancy,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        NETWORK_FINGERPRINT =
          T.let(
            :network_fingerprint,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        POOR_CONVERSION_HISTORY =
          T.let(
            :poor_conversion_history,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        PREFIX_CONCENTRATION =
          T.let(
            :prefix_concentration,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        SUSPECTED_REQUEST_TAMPERING =
          T.let(
            :suspected_request_tampering,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        SUSPICIOUS_IP_ADDRESS =
          T.let(
            :suspicious_ip_address,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        TEMPORARY_PHONE_NUMBER =
          T.let(
            :temporary_phone_number,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
