# typed: strong

module PreludeSDK
  module Models
    module Verification
      module Phone
        class HistoryRetrieveResponse < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The verification identifier.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(Time) }
          attr_accessor :expires_at

          # The E.164 phone number the verification targeted.
          sig { returns(String) }
          attr_accessor :phone_number

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
          sig do
            returns(
              PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Version of your application, when known.
          sig { returns(T.nilable(String)) }
          attr_reader :app_version

          sig { params(app_version: String).void }
          attr_writer :app_version

          # Why the anti-fraud system blocked the verification. Empty unless it did. These
          # are the same labels the Verify and Watch APIs serve as `risk_factors`.
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
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
                ]
              )
            )
          end
          attr_reader :block_reasons

          sig do
            params(
              block_reasons:
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::OrSymbol
                ]
            ).void
          end
          attr_writer :block_reasons

          # The end user's mobile network.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Verification::Phone::PhoneVerificationCarrier
              )
            )
          end
          attr_reader :carrier

          sig do
            params(
              carrier:
                PreludeSDK::Verification::Phone::PhoneVerificationCarrier::OrHash
            ).void
          end
          attr_writer :carrier

          # The correlation identifier you supplied when creating the verification.
          sig { returns(T.nilable(String)) }
          attr_reader :correlation_id

          sig { params(correlation_id: String).void }
          attr_writer :correlation_id

          # Model of the end-user device, when known.
          sig { returns(T.nilable(String)) }
          attr_reader :device_model

          sig { params(device_model: String).void }
          attr_writer :device_model

          # Platform of the end-user device, when known.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::TaggedSymbol
              )
            )
          end
          attr_reader :device_platform

          sig do
            params(
              device_platform:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::OrSymbol
            ).void
          end
          attr_writer :device_platform

          # IP address the verification was created from.
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address

          sig { params(ip_address: String).void }
          attr_writer :ip_address

          # ISO 3166-1 alpha-2 region of the caller's IP address.
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address_region

          sig { params(ip_address_region: String).void }
          attr_writer :ip_address_region

          # Distance between the phone number region and the IP location.
          sig { returns(T.nilable(Integer)) }
          attr_reader :ip_distance_meters

          sig { params(ip_distance_meters: Integer).void }
          attr_writer :ip_distance_meters

          # Chronological timeline of the verification: creation, message attempts with
          # delivery events, code checks and signals reception. Omitted when Prelude holds
          # no timeline for the verification.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle
              )
            )
          end
          attr_reader :lifecycle

          sig do
            params(
              lifecycle:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::OrHash
            ).void
          end
          attr_writer :lifecycle

          # Whether the phone number was allow-listed, block-listed, or sandboxed at
          # verification time.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition::TaggedSymbol
              )
            )
          end
          attr_reader :phone_number_condition

          sig do
            params(
              phone_number_condition:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition::OrSymbol
            ).void
          end
          attr_writer :phone_number_condition

          # Whether the phone number is currently allow-listed, block-listed, or sandboxed.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition::TaggedSymbol
              )
            )
          end
          attr_reader :phone_number_current_condition

          sig do
            params(
              phone_number_current_condition:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition::OrSymbol
            ).void
          end
          attr_writer :phone_number_current_condition

          # ISO 3166-1 alpha-2 region of the phone number.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number_region

          sig { params(phone_number_region: String).void }
          attr_writer :phone_number_region

          # The anti-fraud signals you forwarded when creating the verification.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals
              )
            )
          end
          attr_reader :signals

          sig do
            params(
              signals:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals::OrHash
            ).void
          end
          attr_writer :signals

          # Whether the SDK signals integrity check passed.
          sig do
            returns(
              T.nilable(
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus::TaggedSymbol
              )
            )
          end
          attr_reader :signals_hash_status

          sig do
            params(
              signals_hash_status:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus::OrSymbol
            ).void
          end
          attr_writer :signals_hash_status

          # The template used for this verification.
          sig { returns(T.nilable(String)) }
          attr_reader :template_id

          sig { params(template_id: String).void }
          attr_writer :template_id

          # A verification and everything Prelude recorded about it.
          sig do
            params(
              id: String,
              created_at: Time,
              expires_at: Time,
              phone_number: String,
              status:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::OrSymbol,
              app_version: String,
              block_reasons:
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::OrSymbol
                ],
              carrier:
                PreludeSDK::Verification::Phone::PhoneVerificationCarrier::OrHash,
              correlation_id: String,
              device_model: String,
              device_platform:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::OrSymbol,
              ip_address: String,
              ip_address_region: String,
              ip_distance_meters: Integer,
              lifecycle:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::OrHash,
              phone_number_condition:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition::OrSymbol,
              phone_number_current_condition:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition::OrSymbol,
              phone_number_region: String,
              signals:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals::OrHash,
              signals_hash_status:
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus::OrSymbol,
              template_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The verification identifier.
            id:,
            created_at:,
            expires_at:,
            # The E.164 phone number the verification targeted.
            phone_number:,
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
            status:,
            # Version of your application, when known.
            app_version: nil,
            # Why the anti-fraud system blocked the verification. Empty unless it did. These
            # are the same labels the Verify and Watch APIs serve as `risk_factors`.
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
            block_reasons: nil,
            # The end user's mobile network.
            carrier: nil,
            # The correlation identifier you supplied when creating the verification.
            correlation_id: nil,
            # Model of the end-user device, when known.
            device_model: nil,
            # Platform of the end-user device, when known.
            device_platform: nil,
            # IP address the verification was created from.
            ip_address: nil,
            # ISO 3166-1 alpha-2 region of the caller's IP address.
            ip_address_region: nil,
            # Distance between the phone number region and the IP location.
            ip_distance_meters: nil,
            # Chronological timeline of the verification: creation, message attempts with
            # delivery events, code checks and signals reception. Omitted when Prelude holds
            # no timeline for the verification.
            lifecycle: nil,
            # Whether the phone number was allow-listed, block-listed, or sandboxed at
            # verification time.
            phone_number_condition: nil,
            # Whether the phone number is currently allow-listed, block-listed, or sandboxed.
            phone_number_current_condition: nil,
            # ISO 3166-1 alpha-2 region of the phone number.
            phone_number_region: nil,
            # The anti-fraud signals you forwarded when creating the verification.
            signals: nil,
            # Whether the SDK signals integrity check passed.
            signals_hash_status: nil,
            # The template used for this verification.
            template_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                created_at: Time,
                expires_at: Time,
                phone_number: String,
                status:
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol,
                app_version: String,
                block_reasons:
                  T::Array[
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
                  ],
                carrier:
                  PreludeSDK::Verification::Phone::PhoneVerificationCarrier,
                correlation_id: String,
                device_model: String,
                device_platform:
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::TaggedSymbol,
                ip_address: String,
                ip_address_region: String,
                ip_distance_meters: Integer,
                lifecycle:
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle,
                phone_number_condition:
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition::TaggedSymbol,
                phone_number_current_condition:
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition::TaggedSymbol,
                phone_number_region: String,
                signals:
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals,
                signals_hash_status:
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus::TaggedSymbol,
                template_id: String
              }
            )
          end
          def to_hash
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
          module Status
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONVERTED =
              T.let(
                :converted,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            NOT_CONVERTED =
              T.let(
                :not_converted,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            PENDING_CHECK =
              T.let(
                :pending_check,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            SENT =
              T.let(
                :sent,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            CHALLENGED =
              T.let(
                :challenged,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            SUSPECTED_FRAUD =
              T.let(
                :suspected_fraud,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            IN_BLOCKLIST =
              T.let(
                :in_blocklist,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            INVALID_LINE =
              T.let(
                :invalid_line,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            INVALID_NUMBER =
              T.let(
                :invalid_number,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            RATE_LIMITED =
              T.let(
                :rate_limited,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            EXPIRED_SIGNALS =
              T.let(
                :expired_signals,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )
            SHADOWED =
              T.let(
                :shadowed,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module BlockReason
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUTOMATION_SIGNATURE =
              T.let(
                :automation_signature,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            CARRIER_NOT_PERMITTED =
              T.let(
                :carrier_not_permitted,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            CLIENT_FINGERPRINT_MISMATCH =
              T.let(
                :client_fingerprint_mismatch,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            CUSTOM_POLICY =
              T.let(
                :custom_policy,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            DEVICE_EMULATOR =
              T.let(
                :device_emulator,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            DEVICE_NOT_PERMITTED =
              T.let(
                :device_not_permitted,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            DEVICE_REUSE =
              T.let(
                :device_reuse,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            EXPIRED_SIGNALS =
              T.let(
                :expired_signals,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            FRAUD_DATABASE =
              T.let(
                :fraud_database,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            INVALID_SIGNATURE =
              T.let(
                :invalid_signature,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            IP_CONCENTRATION =
              T.let(
                :ip_concentration,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            IP_REPUTATION =
              T.let(
                :ip_reputation,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            LOCATION_MISMATCH =
              T.let(
                :location_mismatch,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            MISSING_SIGNALS =
              T.let(
                :missing_signals,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            NUMBER_RANGE_ABUSE =
              T.let(
                :number_range_abuse,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            POOR_CONVERSION_HISTORY =
              T.let(
                :poor_conversion_history,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            PROXY_NETWORK =
              T.let(
                :proxy_network,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            REPEATED_ATTEMPTS =
              T.let(
                :repeated_attempts,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )
            TEMPORARY_PHONE_NUMBER =
              T.let(
                :temporary_phone_number,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Platform of the end-user device, when known.
          module DevicePlatform
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ANDROID =
              T.let(
                :android,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::TaggedSymbol
              )
            IOS =
              T.let(
                :ios,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::TaggedSymbol
              )
            IPADOS =
              T.let(
                :ipados,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::TaggedSymbol
              )
            TVOS =
              T.let(
                :tvos,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::TaggedSymbol
              )
            WEB =
              T.let(
                :web,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Lifecycle < PreludeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle,
                  PreludeSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event
                ]
              )
            end
            attr_accessor :events

            sig do
              returns(
                T.nilable(
                  PreludeSDK::Verification::Phone::PhoneVerificationMoney
                )
              )
            end
            attr_reader :total_cost

            sig do
              params(
                total_cost:
                  PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash
              ).void
            end
            attr_writer :total_cost

            # How many times the message was reported undeliverable by independent routes.
            # Above zero usually means the phone number is incorrect or the device
            # unreachable.
            sig { returns(T.nilable(Integer)) }
            attr_reader :undeliverable_route_count

            sig { params(undeliverable_route_count: Integer).void }
            attr_writer :undeliverable_route_count

            # Chronological timeline of the verification: creation, message attempts with
            # delivery events, code checks and signals reception. Omitted when Prelude holds
            # no timeline for the verification.
            sig do
              params(
                events:
                  T::Array[
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::OrHash
                  ],
                total_cost:
                  PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash,
                undeliverable_route_count: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              events:,
              total_cost: nil,
              # How many times the message was reported undeliverable by independent routes.
              # Above zero usually means the phone number is incorrect or the device
              # unreachable.
              undeliverable_route_count: nil
            )
            end

            sig do
              override.returns(
                {
                  events:
                    T::Array[
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event
                    ],
                  total_cost:
                    PreludeSDK::Verification::Phone::PhoneVerificationMoney,
                  undeliverable_route_count: Integer
                }
              )
            end
            def to_hash
            end

            class Event < PreludeSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event,
                    PreludeSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type::TaggedSymbol
                )
              end
              attr_accessor :type

              # One message sent for this verification.
              sig do
                returns(
                  T.nilable(
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt
                  )
                )
              end
              attr_reader :attempt

              sig do
                params(
                  attempt:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::OrHash
                ).void
              end
              attr_writer :attempt

              # One code submission for this verification.
              sig do
                returns(
                  T.nilable(
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check
                  )
                )
              end
              attr_reader :check

              sig do
                params(
                  check:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::OrHash
                ).void
              end
              attr_writer :check

              sig do
                returns(
                  T.nilable(
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Create
                  )
                )
              end
              attr_reader :create

              sig do
                params(
                  create:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Create::OrHash
                ).void
              end
              attr_writer :create

              sig do
                returns(
                  T.nilable(
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals
                  )
                )
              end
              attr_reader :signals

              sig do
                params(
                  signals:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::OrHash
                ).void
              end
              attr_writer :signals

              # One timeline entry. `type` names the single payload field that is set.
              sig do
                params(
                  type:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type::OrSymbol,
                  attempt:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::OrHash,
                  check:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::OrHash,
                  create:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Create::OrHash,
                  signals:
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                type:,
                # One message sent for this verification.
                attempt: nil,
                # One code submission for this verification.
                check: nil,
                create: nil,
                signals: nil
              )
              end

              sig do
                override.returns(
                  {
                    type:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type::TaggedSymbol,
                    attempt:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt,
                    check:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check,
                    create:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Create,
                    signals:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals
                  }
                )
              end
              def to_hash
              end

              module Type
                extend PreludeSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CREATE =
                  T.let(
                    :create,
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type::TaggedSymbol
                  )
                ATTEMPT =
                  T.let(
                    :attempt,
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type::TaggedSymbol
                  )
                CHECK =
                  T.let(
                    :check,
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type::TaggedSymbol
                  )
                SIGNALS =
                  T.let(
                    :signals,
                    PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class Attempt < PreludeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt,
                      PreludeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(String) }
                attr_accessor :id

                sig { returns(Time) }
                attr_accessor :created_at

                # The end user's mobile network.
                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Verification::Phone::PhoneVerificationCarrier
                    )
                  )
                end
                attr_reader :carrier

                sig do
                  params(
                    carrier:
                      PreludeSDK::Verification::Phone::PhoneVerificationCarrier::OrHash
                  ).void
                end
                attr_writer :carrier

                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )
                  )
                end
                attr_reader :channel

                sig do
                  params(
                    channel:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::OrSymbol
                  ).void
                end
                attr_writer :channel

                # Message body. While the verification can still be completed, the code inside it
                # is masked rather than removed.
                sig { returns(T.nilable(String)) }
                attr_reader :content

                sig { params(content: String).void }
                attr_writer :content

                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Verification::Phone::PhoneVerificationMoney
                    )
                  )
                end
                attr_reader :cost

                sig do
                  params(
                    cost:
                      PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash
                  ).void
                end
                attr_writer :cost

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent
                      ]
                    )
                  )
                end
                attr_reader :delivery_events

                sig do
                  params(
                    delivery_events:
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::OrHash
                      ]
                  ).void
                end
                attr_writer :delivery_events

                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::TaggedSymbol
                    )
                  )
                end
                attr_reader :delivery_status

                sig do
                  params(
                    delivery_status:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::OrSymbol
                  ).void
                end
                attr_writer :delivery_status

                # Channel you asked for, when it differs from the one used.
                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )
                  )
                end
                attr_reader :preferred_channel

                sig do
                  params(
                    preferred_channel:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::OrSymbol
                  ).void
                end
                attr_writer :preferred_channel

                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status::TaggedSymbol
                    )
                  )
                end
                attr_reader :status

                sig do
                  params(
                    status:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status::OrSymbol
                  ).void
                end
                attr_writer :status

                # What caused the attempt.
                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger::TaggedSymbol
                    )
                  )
                end
                attr_reader :trigger

                sig do
                  params(
                    trigger:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger::OrSymbol
                  ).void
                end
                attr_writer :trigger

                # One message sent for this verification.
                sig do
                  params(
                    id: String,
                    created_at: Time,
                    carrier:
                      PreludeSDK::Verification::Phone::PhoneVerificationCarrier::OrHash,
                    channel:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::OrSymbol,
                    content: String,
                    cost:
                      PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash,
                    delivery_events:
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::OrHash
                      ],
                    delivery_status:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::OrSymbol,
                    preferred_channel:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::OrSymbol,
                    status:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status::OrSymbol,
                    trigger:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(
                  id:,
                  created_at:,
                  # The end user's mobile network.
                  carrier: nil,
                  channel: nil,
                  # Message body. While the verification can still be completed, the code inside it
                  # is masked rather than removed.
                  content: nil,
                  cost: nil,
                  delivery_events: nil,
                  delivery_status: nil,
                  # Channel you asked for, when it differs from the one used.
                  preferred_channel: nil,
                  status: nil,
                  # What caused the attempt.
                  trigger: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      created_at: Time,
                      carrier:
                        PreludeSDK::Verification::Phone::PhoneVerificationCarrier,
                      channel:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol,
                      content: String,
                      cost:
                        PreludeSDK::Verification::Phone::PhoneVerificationMoney,
                      delivery_events:
                        T::Array[
                          PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent
                        ],
                      delivery_status:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::TaggedSymbol,
                      preferred_channel:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol,
                      status:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status::TaggedSymbol,
                      trigger:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                module Channel
                  extend PreludeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SMS =
                    T.let(
                      :sms,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )
                  RCS =
                    T.let(
                      :rcs,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )
                  WHATSAPP =
                    T.let(
                      :whatsapp,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )
                  VIBER =
                    T.let(
                      :viber,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )
                  ZALO =
                    T.let(
                      :zalo,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )
                  TELEGRAM =
                    T.let(
                      :telegram,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )
                  VOICE =
                    T.let(
                      :voice,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )
                  SILENT =
                    T.let(
                      :silent,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                class DeliveryEvent < PreludeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent,
                        PreludeSDK::Internal::AnyHash
                      )
                    end

                  sig { returns(Time) }
                  attr_accessor :received_at

                  # The state this event reported. It is finer-grained than the attempt's
                  # `delivery_status` and includes the states a silent verification goes through.
                  sig do
                    returns(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                    )
                  end
                  attr_accessor :status

                  sig do
                    params(
                      received_at: Time,
                      status:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::OrSymbol
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    received_at:,
                    # The state this event reported. It is finer-grained than the attempt's
                    # `delivery_status` and includes the states a silent verification goes through.
                    status:
                  )
                  end

                  sig do
                    override.returns(
                      {
                        received_at: Time,
                        status:
                          PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      }
                    )
                  end
                  def to_hash
                  end

                  # The state this event reported. It is finer-grained than the attempt's
                  # `delivery_status` and includes the states a silent verification goes through.
                  module Status
                    extend PreludeSDK::Internal::Type::Enum

                    TaggedSymbol =
                      T.type_alias do
                        T.all(
                          Symbol,
                          PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    UNKNOWN =
                      T.let(
                        :unknown,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    SUBMITTED =
                      T.let(
                        :submitted,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    IN_TRANSIT =
                      T.let(
                        :in_transit,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    DELIVERED =
                      T.let(
                        :delivered,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    UNDELIVERABLE =
                      T.let(
                        :undeliverable,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    EXPIRED =
                      T.let(
                        :expired,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    READ =
                      T.let(
                        :read,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    SILENT_STARTED =
                      T.let(
                        :silent_started,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    SILENT_VERIFIED =
                      T.let(
                        :silent_verified,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )
                    SILENT_MISMATCH =
                      T.let(
                        :silent_mismatch,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end
                end

                module DeliveryStatus
                  extend PreludeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  UNKNOWN =
                    T.let(
                      :unknown,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::TaggedSymbol
                    )
                  IN_TRANSIT =
                    T.let(
                      :in_transit,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::TaggedSymbol
                    )
                  DELIVERED =
                    T.let(
                      :delivered,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::TaggedSymbol
                    )
                  UNDELIVERABLE =
                    T.let(
                      :undeliverable,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::TaggedSymbol
                    )
                  READ =
                    T.let(
                      :read,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # Channel you asked for, when it differs from the one used.
                module PreferredChannel
                  extend PreludeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SMS =
                    T.let(
                      :sms,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )
                  RCS =
                    T.let(
                      :rcs,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )
                  WHATSAPP =
                    T.let(
                      :whatsapp,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )
                  VIBER =
                    T.let(
                      :viber,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )
                  ZALO =
                    T.let(
                      :zalo,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )
                  TELEGRAM =
                    T.let(
                      :telegram,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )
                  VOICE =
                    T.let(
                      :voice,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )
                  SILENT =
                    T.let(
                      :silent,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                module Status
                  extend PreludeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SUCCEEDED =
                    T.let(
                      :succeeded,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status::TaggedSymbol
                    )
                  FAILED =
                    T.let(
                      :failed,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                # What caused the attempt.
                module Trigger
                  extend PreludeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  INITIAL =
                    T.let(
                      :initial,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger::TaggedSymbol
                    )
                  AUTO_RETRY =
                    T.let(
                      :auto_retry,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger::TaggedSymbol
                    )
                  USER_RETRY =
                    T.let(
                      :user_retry,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class Check < PreludeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check,
                      PreludeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Time) }
                attr_accessor :created_at

                sig { returns(T::Boolean) }
                attr_accessor :is_valid

                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )
                  )
                end
                attr_reader :channel

                sig do
                  params(
                    channel:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::OrSymbol
                  ).void
                end
                attr_writer :channel

                # Present on checks against a `prelude:psd2` code.
                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info
                    )
                  )
                end
                attr_reader :psd2_info

                sig do
                  params(
                    psd2_info:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info::OrHash
                  ).void
                end
                attr_writer :psd2_info

                # Why an invalid check failed, when known.
                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::TaggedSymbol
                    )
                  )
                end
                attr_reader :status_detail

                sig do
                  params(
                    status_detail:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::OrSymbol
                  ).void
                end
                attr_writer :status_detail

                # The submitted code. Absent while the verification can still be completed, so
                # that a check in flight cannot be read back through this endpoint, and absent on
                # silent verification checks, which carry no code.
                sig { returns(T.nilable(String)) }
                attr_reader :value

                sig { params(value: String).void }
                attr_writer :value

                # One code submission for this verification.
                sig do
                  params(
                    created_at: Time,
                    is_valid: T::Boolean,
                    channel:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::OrSymbol,
                    psd2_info:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info::OrHash,
                    status_detail:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::OrSymbol,
                    value: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  created_at:,
                  is_valid:,
                  channel: nil,
                  # Present on checks against a `prelude:psd2` code.
                  psd2_info: nil,
                  # Why an invalid check failed, when known.
                  status_detail: nil,
                  # The submitted code. Absent while the verification can still be completed, so
                  # that a check in flight cannot be read back through this endpoint, and absent on
                  # silent verification checks, which carry no code.
                  value: nil
                )
                end

                sig do
                  override.returns(
                    {
                      created_at: Time,
                      is_valid: T::Boolean,
                      channel:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol,
                      psd2_info:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info,
                      status_detail:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::TaggedSymbol,
                      value: String
                    }
                  )
                end
                def to_hash
                end

                module Channel
                  extend PreludeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  SMS =
                    T.let(
                      :sms,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )
                  RCS =
                    T.let(
                      :rcs,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )
                  WHATSAPP =
                    T.let(
                      :whatsapp,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )
                  VIBER =
                    T.let(
                      :viber,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )
                  ZALO =
                    T.let(
                      :zalo,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )
                  TELEGRAM =
                    T.let(
                      :telegram,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )
                  VOICE =
                    T.let(
                      :voice,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )
                  SILENT =
                    T.let(
                      :silent,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end

                class Psd2Info < PreludeSDK::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info,
                        PreludeSDK::Internal::AnyHash
                      )
                    end

                  # The transaction submitted when the code was issued.
                  sig do
                    returns(
                      T.nilable(
                        PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction
                      )
                    )
                  end
                  attr_reader :expected_transaction

                  sig do
                    params(
                      expected_transaction:
                        PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction::OrHash
                    ).void
                  end
                  attr_writer :expected_transaction

                  # The transaction submitted with this check. Differs from `expected_transaction`
                  # when `status_detail` is `transaction_mismatch`.
                  sig do
                    returns(
                      T.nilable(
                        PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction
                      )
                    )
                  end
                  attr_reader :received_transaction

                  sig do
                    params(
                      received_transaction:
                        PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction::OrHash
                    ).void
                  end
                  attr_writer :received_transaction

                  # Present on checks against a `prelude:psd2` code.
                  sig do
                    params(
                      expected_transaction:
                        PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction::OrHash,
                      received_transaction:
                        PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction::OrHash
                    ).returns(T.attached_class)
                  end
                  def self.new(
                    # The transaction submitted when the code was issued.
                    expected_transaction: nil,
                    # The transaction submitted with this check. Differs from `expected_transaction`
                    # when `status_detail` is `transaction_mismatch`.
                    received_transaction: nil
                  )
                  end

                  sig do
                    override.returns(
                      {
                        expected_transaction:
                          PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction,
                        received_transaction:
                          PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction
                      }
                    )
                  end
                  def to_hash
                  end
                end

                # Why an invalid check failed, when known.
                module StatusDetail
                  extend PreludeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  EXPIRED_ATTEMPT =
                    T.let(
                      :expired_attempt,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::TaggedSymbol
                    )
                  EXPIRED_AUTH =
                    T.let(
                      :expired_auth,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::TaggedSymbol
                    )
                  RATE_LIMITED =
                    T.let(
                      :rate_limited,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::TaggedSymbol
                    )
                  TRANSACTION_MISSING =
                    T.let(
                      :transaction_missing,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::TaggedSymbol
                    )
                  TRANSACTION_MISMATCH =
                    T.let(
                      :transaction_mismatch,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end

              class Create < PreludeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Create,
                      PreludeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Time) }
                attr_accessor :created_at

                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Verification::Phone::PhoneVerificationMoney
                    )
                  )
                end
                attr_reader :cost

                sig do
                  params(
                    cost:
                      PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash
                  ).void
                end
                attr_writer :cost

                sig do
                  params(
                    created_at: Time,
                    cost:
                      PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash
                  ).returns(T.attached_class)
                end
                def self.new(created_at:, cost: nil)
                end

                sig do
                  override.returns(
                    {
                      created_at: Time,
                      cost:
                        PreludeSDK::Verification::Phone::PhoneVerificationMoney
                    }
                  )
                end
                def to_hash
                end
              end

              class Signals < PreludeSDK::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals,
                      PreludeSDK::Internal::AnyHash
                    )
                  end

                sig { returns(Time) }
                attr_accessor :received_at

                sig { returns(T.nilable(Time)) }
                attr_reader :expired_at

                sig { params(expired_at: Time).void }
                attr_writer :expired_at

                sig do
                  returns(
                    T.nilable(
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status::TaggedSymbol
                    )
                  )
                end
                attr_reader :status

                sig do
                  params(
                    status:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status::OrSymbol
                  ).void
                end
                attr_writer :status

                sig do
                  params(
                    received_at: Time,
                    expired_at: Time,
                    status:
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(received_at:, expired_at: nil, status: nil)
                end

                sig do
                  override.returns(
                    {
                      received_at: Time,
                      expired_at: Time,
                      status:
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                module Status
                  extend PreludeSDK::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  VALID =
                    T.let(
                      :valid,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status::TaggedSymbol
                    )
                  INVALID =
                    T.let(
                      :invalid,
                      PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status::TaggedSymbol
                      ]
                    )
                  end
                  def self.values
                  end
                end
              end
            end
          end

          # Whether the phone number was allow-listed, block-listed, or sandboxed at
          # verification time.
          module PhoneNumberCondition
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALLOW_LISTED =
              T.let(
                :allow_listed,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition::TaggedSymbol
              )
            BLOCK_LISTED =
              T.let(
                :block_listed,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition::TaggedSymbol
              )
            SANDBOXED =
              T.let(
                :sandboxed,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Whether the phone number is currently allow-listed, block-listed, or sandboxed.
          module PhoneNumberCurrentCondition
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALLOW_LISTED =
              T.let(
                :allow_listed,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition::TaggedSymbol
              )
            BLOCK_LISTED =
              T.let(
                :block_listed,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition::TaggedSymbol
              )
            SANDBOXED =
              T.let(
                :sandboxed,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Signals < PreludeSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals,
                  PreludeSDK::Internal::AnyHash
                )
              end

            # Whether you flagged this end user as trusted when creating the verification.
            # Declared by you, not computed by Prelude.
            sig { returns(T::Boolean) }
            attr_accessor :is_trusted_user

            # End-user device identifier you forwarded.
            sig { returns(T.nilable(String)) }
            attr_reader :device_id

            sig { params(device_id: String).void }
            attr_writer :device_id

            # TLS fingerprint you forwarded.
            sig { returns(T.nilable(String)) }
            attr_reader :ja4_fingerprint

            sig { params(ja4_fingerprint: String).void }
            attr_writer :ja4_fingerprint

            sig { returns(T.nilable(String)) }
            attr_reader :os_version

            sig { params(os_version: String).void }
            attr_writer :os_version

            sig { returns(T.nilable(String)) }
            attr_reader :user_agent

            sig { params(user_agent: String).void }
            attr_writer :user_agent

            # The anti-fraud signals you forwarded when creating the verification.
            sig do
              params(
                is_trusted_user: T::Boolean,
                device_id: String,
                ja4_fingerprint: String,
                os_version: String,
                user_agent: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Whether you flagged this end user as trusted when creating the verification.
              # Declared by you, not computed by Prelude.
              is_trusted_user:,
              # End-user device identifier you forwarded.
              device_id: nil,
              # TLS fingerprint you forwarded.
              ja4_fingerprint: nil,
              os_version: nil,
              user_agent: nil
            )
            end

            sig do
              override.returns(
                {
                  is_trusted_user: T::Boolean,
                  device_id: String,
                  ja4_fingerprint: String,
                  os_version: String,
                  user_agent: String
                }
              )
            end
            def to_hash
            end
          end

          # Whether the SDK signals integrity check passed.
          module SignalsHashStatus
            extend PreludeSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VALID =
              T.let(
                :valid,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus::TaggedSymbol
              )
            INVALID =
              T.let(
                :invalid,
                PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
