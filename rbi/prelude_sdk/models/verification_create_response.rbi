# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::VerificationCreateResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The verification identifier.
      sig { returns(String) }
      attr_accessor :id

      # The method used for verifying this phone number.
      sig do
        returns(
          PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :verification_method

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
      sig do
        returns(
          PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The ordered sequence of channels to be used for verification
      sig do
        returns(
          T.nilable(
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :channels

      sig do
        params(
          channels:
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Channel::OrSymbol
            ]
        ).void
      end
      attr_writer :channels

      # The metadata for this verification.
      sig do
        returns(
          T.nilable(PreludeSDK::Models::VerificationCreateResponse::Metadata)
        )
      end
      attr_reader :metadata

      sig do
        params(
          metadata:
            PreludeSDK::Models::VerificationCreateResponse::Metadata::OrHash
        ).void
      end
      attr_writer :metadata

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
      sig do
        returns(
          T.nilable(
            PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
          )
        )
      end
      attr_reader :reason

      sig do
        params(
          reason:
            PreludeSDK::Models::VerificationCreateResponse::Reason::OrSymbol
        ).void
      end
      attr_writer :reason

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      # The risk factors that contributed to the verification being blocked. Only
      # present when status is "blocked" or "shadow_blocked" and the anti-fraud system
      # detected specific risk signals.
      #
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
              PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :risk_factors

      sig do
        params(
          risk_factors:
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::RiskFactor::OrSymbol
            ]
        ).void
      end
      attr_writer :risk_factors

      # The silent verification specific properties.
      sig do
        returns(
          T.nilable(PreludeSDK::Models::VerificationCreateResponse::Silent)
        )
      end
      attr_reader :silent

      sig do
        params(
          silent: PreludeSDK::Models::VerificationCreateResponse::Silent::OrHash
        ).void
      end
      attr_writer :silent

      sig do
        params(
          id: String,
          verification_method:
            PreludeSDK::Models::VerificationCreateResponse::Method::OrSymbol,
          status:
            PreludeSDK::Models::VerificationCreateResponse::Status::OrSymbol,
          channels:
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Channel::OrSymbol
            ],
          metadata:
            PreludeSDK::Models::VerificationCreateResponse::Metadata::OrHash,
          reason:
            PreludeSDK::Models::VerificationCreateResponse::Reason::OrSymbol,
          request_id: String,
          risk_factors:
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::RiskFactor::OrSymbol
            ],
          silent: PreludeSDK::Models::VerificationCreateResponse::Silent::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The verification identifier.
        id:,
        # The method used for verifying this phone number.
        verification_method:,
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
        status:,
        # The ordered sequence of channels to be used for verification
        channels: nil,
        # The metadata for this verification.
        metadata: nil,
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
        reason: nil,
        request_id: nil,
        # The risk factors that contributed to the verification being blocked. Only
        # present when status is "blocked" or "shadow_blocked" and the anti-fraud system
        # detected specific risk signals.
        #
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
        risk_factors: nil,
        # The silent verification specific properties.
        silent: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            verification_method:
              PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol,
            status:
              PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol,
            channels:
              T::Array[
                PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
              ],
            metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
            reason:
              PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol,
            request_id: String,
            risk_factors:
              T::Array[
                PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
              ],
            silent: PreludeSDK::Models::VerificationCreateResponse::Silent
          }
        )
      end
      def to_hash
      end

      # The method used for verifying this phone number.
      module Method
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::VerificationCreateResponse::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL =
          T.let(
            :email,
            PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
          )
        MESSAGE =
          T.let(
            :message,
            PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
          )
        SILENT =
          T.let(
            :silent,
            PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
          )
        VOICE =
          T.let(
            :voice,
            PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
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
      module Status
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::VerificationCreateResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCESS =
          T.let(
            :success,
            PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        RETRY =
          T.let(
            :retry,
            PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        CHALLENGED =
          T.let(
            :challenged,
            PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        BLOCKED =
          T.let(
            :blocked,
            PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        SHADOW_BLOCKED =
          T.let(
            :shadow_blocked,
            PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Channel
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::VerificationCreateResponse::Channel
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RCS =
          T.let(
            :rcs,
            PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
          )
        SILENT =
          T.let(
            :silent,
            PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
          )
        SMS =
          T.let(
            :sms,
            PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
          )
        TELEGRAM =
          T.let(
            :telegram,
            PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
          )
        VIBER =
          T.let(
            :viber,
            PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
          )
        VOICE =
          T.let(
            :voice,
            PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
          )
        WHATSAPP =
          T.let(
            :whatsapp,
            PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
          )
        ZALO =
          T.let(
            :zalo,
            PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Channel::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Metadata < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::VerificationCreateResponse::Metadata,
              PreludeSDK::Internal::AnyHash
            )
          end

        # A user-defined identifier to correlate this verification with. It is returned in
        # the response and any webhook events that refer to this verification.
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        # The metadata for this verification.
        sig { params(correlation_id: String).returns(T.attached_class) }
        def self.new(
          # A user-defined identifier to correlate this verification with. It is returned in
          # the response and any webhook events that refer to this verification.
          correlation_id: nil
        )
        end

        sig { override.returns({ correlation_id: String }) }
        def to_hash
        end
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
      module Reason
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::VerificationCreateResponse::Reason
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPIRED_SIGNATURE =
          T.let(
            :expired_signature,
            PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
          )
        IN_BLOCK_LIST =
          T.let(
            :in_block_list,
            PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
          )
        INVALID_PHONE_LINE =
          T.let(
            :invalid_phone_line,
            PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
          )
        INVALID_PHONE_NUMBER =
          T.let(
            :invalid_phone_number,
            PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
          )
        INVALID_SIGNATURE =
          T.let(
            :invalid_signature,
            PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
          )
        REPEATED_ATTEMPTS =
          T.let(
            :repeated_attempts,
            PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
          )
        SUSPICIOUS =
          T.let(
            :suspicious,
            PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Reason::TaggedSymbol
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
            T.all(
              Symbol,
              PreludeSDK::Models::VerificationCreateResponse::RiskFactor
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTOMATION_SIGNATURE =
          T.let(
            :automation_signature,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        CARRIER_NOT_PERMITTED =
          T.let(
            :carrier_not_permitted,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        CLIENT_FINGERPRINT_MISMATCH =
          T.let(
            :client_fingerprint_mismatch,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        CUSTOM_POLICY =
          T.let(
            :custom_policy,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        DEVICE_EMULATOR =
          T.let(
            :device_emulator,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        DEVICE_NOT_PERMITTED =
          T.let(
            :device_not_permitted,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        DEVICE_REUSE =
          T.let(
            :device_reuse,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        EXPIRED_SIGNALS =
          T.let(
            :expired_signals,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        FRAUD_DATABASE =
          T.let(
            :fraud_database,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        INVALID_SIGNATURE =
          T.let(
            :invalid_signature,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        IP_CONCENTRATION =
          T.let(
            :ip_concentration,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        IP_REPUTATION =
          T.let(
            :ip_reputation,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        LOCATION_MISMATCH =
          T.let(
            :location_mismatch,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        MISSING_SIGNALS =
          T.let(
            :missing_signals,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        NUMBER_RANGE_ABUSE =
          T.let(
            :number_range_abuse,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        POOR_CONVERSION_HISTORY =
          T.let(
            :poor_conversion_history,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        PROXY_NETWORK =
          T.let(
            :proxy_network,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        REPEATED_ATTEMPTS =
          T.let(
            :repeated_attempts,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        TEMPORARY_PHONE_NUMBER =
          T.let(
            :temporary_phone_number,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Silent < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::VerificationCreateResponse::Silent,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The URL to start the silent verification towards.
        sig { returns(String) }
        attr_accessor :request_url

        # The silent verification specific properties.
        sig { params(request_url: String).returns(T.attached_class) }
        def self.new(
          # The URL to start the silent verification towards.
          request_url:
        )
        end

        sig { override.returns({ request_url: String }) }
        def to_hash
        end
      end
    end
  end
end
