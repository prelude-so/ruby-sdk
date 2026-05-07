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
      # - `invalid_signature` - The signature of the SDK signals is invalid.
      # - `repeated_attempts` - The phone number has made too many verification
      #   attempts.
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
        # - `invalid_signature` - The signature of the SDK signals is invalid.
        # - `repeated_attempts` - The phone number has made too many verification
        #   attempts.
        # - `suspicious` - The verification attempt was deemed suspicious by the
        #   anti-fraud system.
        reason: nil,
        request_id: nil,
        # The risk factors that contributed to the verification being blocked. Only
        # present when status is "blocked" or "shadow_blocked" and the anti-fraud system
        # detected specific risk signals.
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
      # - `invalid_signature` - The signature of the SDK signals is invalid.
      # - `repeated_attempts` - The phone number has made too many verification
      #   attempts.
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

        BEHAVIORAL_PATTERN =
          T.let(
            :behavioral_pattern,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        DEVICE_ATTRIBUTE =
          T.let(
            :device_attribute,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        FRAUD_DATABASE =
          T.let(
            :fraud_database,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        LOCATION_DISCREPANCY =
          T.let(
            :location_discrepancy,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        NETWORK_FINGERPRINT =
          T.let(
            :network_fingerprint,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        POOR_CONVERSION_HISTORY =
          T.let(
            :poor_conversion_history,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        PREFIX_CONCENTRATION =
          T.let(
            :prefix_concentration,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        SUSPECTED_REQUEST_TAMPERING =
          T.let(
            :suspected_request_tampering,
            PreludeSDK::Models::VerificationCreateResponse::RiskFactor::TaggedSymbol
          )
        SUSPICIOUS_IP_ADDRESS =
          T.let(
            :suspicious_ip_address,
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
