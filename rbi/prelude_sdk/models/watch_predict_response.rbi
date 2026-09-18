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
      # - `account_risk_profile` - The request matches a risk profile derived from the
      #   outcomes reported on your own account.
      # - `automation_signature` - The request appears to come from an automated client
      #   rather than a person.
      # - `carrier_not_permitted` - The destination carrier is one this account does not
      #   accept traffic for.
      # - `client_fingerprint_mismatch` - The client does not appear to be the platform
      #   it identifies itself as.
      # - `custom_policy` - A rule configured for your account matched this request.
      # - `device_emulator` - The request appears to come from an emulator rather than a
      #   physical device.
      # - `device_not_permitted` - The device platform is one your account blocks.
      # - `device_reuse` - One device is driving verifications for an unusual number of
      #   phone numbers.
      # - `expired_signals` - The SDK signals were collected too long before the request
      #   to still attest to it.
      # - `fraud_database` - The phone number is flagged in one or more of the fraud
      #   databases Prelude consults.
      # - `invalid_signature` - The SDK signature did not verify, so the request cannot
      #   be attributed to the device it claims to come from.
      # - `ip_concentration` - The request shares its origin with an unusual volume of
      #   other verifications.
      # - `ip_reputation` - The originating IP address is not trusted.
      # - `location_mismatch` - The network location and the phone number's country are
      #   inconsistent.
      # - `missing_signals` - The verification expected Prelude SDK signals and none
      #   arrived.
      # - `number_range_abuse` - The phone number belongs to a range currently
      #   associated with abuse.
      # - `poor_conversion_history` - Traffic resembling this request rarely completes a
      #   verification.
      # - `proxy_network` - The request did not arrive over the subscriber's own access
      #   network.
      # - `repeated_attempts` - The phone number exceeded the allowed number of
      #   verification attempts in a short period.
      # - `temporary_phone_number` - The phone number belongs to a disposable or
      #   short-lived numbering service.
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
        # - `account_risk_profile` - The request matches a risk profile derived from the
        #   outcomes reported on your own account.
        # - `automation_signature` - The request appears to come from an automated client
        #   rather than a person.
        # - `carrier_not_permitted` - The destination carrier is one this account does not
        #   accept traffic for.
        # - `client_fingerprint_mismatch` - The client does not appear to be the platform
        #   it identifies itself as.
        # - `custom_policy` - A rule configured for your account matched this request.
        # - `device_emulator` - The request appears to come from an emulator rather than a
        #   physical device.
        # - `device_not_permitted` - The device platform is one your account blocks.
        # - `device_reuse` - One device is driving verifications for an unusual number of
        #   phone numbers.
        # - `expired_signals` - The SDK signals were collected too long before the request
        #   to still attest to it.
        # - `fraud_database` - The phone number is flagged in one or more of the fraud
        #   databases Prelude consults.
        # - `invalid_signature` - The SDK signature did not verify, so the request cannot
        #   be attributed to the device it claims to come from.
        # - `ip_concentration` - The request shares its origin with an unusual volume of
        #   other verifications.
        # - `ip_reputation` - The originating IP address is not trusted.
        # - `location_mismatch` - The network location and the phone number's country are
        #   inconsistent.
        # - `missing_signals` - The verification expected Prelude SDK signals and none
        #   arrived.
        # - `number_range_abuse` - The phone number belongs to a range currently
        #   associated with abuse.
        # - `poor_conversion_history` - Traffic resembling this request rarely completes a
        #   verification.
        # - `proxy_network` - The request did not arrive over the subscriber's own access
        #   network.
        # - `repeated_attempts` - The phone number exceeded the allowed number of
        #   verification attempts in a short period.
        # - `temporary_phone_number` - The phone number belongs to a disposable or
        #   short-lived numbering service.
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

        ACCOUNT_RISK_PROFILE =
          T.let(
            :account_risk_profile,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        AUTOMATION_SIGNATURE =
          T.let(
            :automation_signature,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        CARRIER_NOT_PERMITTED =
          T.let(
            :carrier_not_permitted,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        CLIENT_FINGERPRINT_MISMATCH =
          T.let(
            :client_fingerprint_mismatch,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        CUSTOM_POLICY =
          T.let(
            :custom_policy,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        DEVICE_EMULATOR =
          T.let(
            :device_emulator,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        DEVICE_NOT_PERMITTED =
          T.let(
            :device_not_permitted,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        DEVICE_REUSE =
          T.let(
            :device_reuse,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        EXPIRED_SIGNALS =
          T.let(
            :expired_signals,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        FRAUD_DATABASE =
          T.let(
            :fraud_database,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        INVALID_SIGNATURE =
          T.let(
            :invalid_signature,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        IP_CONCENTRATION =
          T.let(
            :ip_concentration,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        IP_REPUTATION =
          T.let(
            :ip_reputation,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        LOCATION_MISMATCH =
          T.let(
            :location_mismatch,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        MISSING_SIGNALS =
          T.let(
            :missing_signals,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        NUMBER_RANGE_ABUSE =
          T.let(
            :number_range_abuse,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        POOR_CONVERSION_HISTORY =
          T.let(
            :poor_conversion_history,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        PROXY_NETWORK =
          T.let(
            :proxy_network,
            PreludeSDK::Models::WatchPredictResponse::RiskFactor::TaggedSymbol
          )
        REPEATED_ATTEMPTS =
          T.let(
            :repeated_attempts,
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
