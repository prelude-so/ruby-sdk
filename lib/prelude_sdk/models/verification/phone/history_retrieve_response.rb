# frozen_string_literal: true

module PreludeSDK
  module Models
    module Verification
      module Phone
        # @see PreludeSDK::Resources::Verification::Phone::History#retrieve
        class HistoryRetrieveResponse < PreludeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The verification identifier.
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute expires_at
          #
          #   @return [Time]
          required :expires_at, Time

          # @!attribute phone_number
          #   The E.164 phone number the verification targeted.
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute status
          #   The outcome of the verification.
          #
          #   - `converted` - The end user submitted a valid code.
          #   - `not_converted` - The verification expired without a valid code.
          #   - `pending_check` - A code was delivered and Prelude is still waiting for a
          #     check.
          #   - `sent` - A code was sent and the verification window is still open.
          #   - `challenged` - The verification was restricted to non-SMS and non-voice
          #     channels.
          #   - `suspected_fraud` - The anti-fraud system blocked the verification.
          #   - `in_blocklist` - The phone number is on the configured block list.
          #   - `invalid_line` - The phone number is not a valid line type.
          #   - `invalid_number` - The phone number is not a valid number.
          #   - `rate_limited` - The verification was refused by a rate limit.
          #   - `expired_signals` - The SDK signals were collected too long before the
          #     request.
          #   - `shadowed` - The anti-fraud system flagged the verification without blocking
          #     it.
          #
          #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status]
          required :status, enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status }

          # @!attribute app_version
          #   Version of your application, when known.
          #
          #   @return [String, nil]
          optional :app_version, String

          # @!attribute block_reasons
          #   Why the anti-fraud system blocked the verification. Empty unless it did.
          #
          #   - `behavioral_pattern` - The phone number past behavior during verification
          #     flows exhibits suspicious patterns.
          #   - `device_attribute` - The end-user device reported attributes associated with
          #     fraud or emulation.
          #   - `fraud_database` - The phone number appears in a fraud database.
          #   - `location_discrepancy` - The phone number region and the observed location
          #     disagree.
          #   - `missing_signals` - The verification expected Prelude SDK signals and none
          #     arrived.
          #   - `network_fingerprint` - The network fingerprint matches known fraudulent
          #     traffic.
          #   - `poor_conversion_history` - The phone number rarely completes the
          #     verifications it starts.
          #   - `prefix_concentration` - The phone number is part of a range known to be
          #     associated with suspicious activity patterns.
          #   - `repeated_number` - The phone number was used far more often than normal
          #     traffic would explain.
          #   - `suspected_request_tampering` - The SDK signals were altered or expired
          #     between collection and use.
          #   - `suspicious_ip_address` - The originating IP address is associated with
          #     suspicious activity.
          #   - `temporary_phone_number` - The phone number is known to be a temporary or
          #     disposable number.
          #
          #   @return [Array<Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason>, nil]
          optional :block_reasons,
                   -> { PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason] }

          # @!attribute carrier
          #   The end user's mobile network.
          #
          #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationCarrier, nil]
          optional :carrier, -> { PreludeSDK::Verification::Phone::PhoneVerificationCarrier }

          # @!attribute correlation_id
          #   The correlation identifier you supplied when creating the verification.
          #
          #   @return [String, nil]
          optional :correlation_id, String

          # @!attribute device_model
          #   Model of the end-user device, when known.
          #
          #   @return [String, nil]
          optional :device_model, String

          # @!attribute device_platform
          #   Platform of the end-user device, when known.
          #
          #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform, nil]
          optional :device_platform,
                   enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform }

          # @!attribute ip_address
          #   IP address the verification was created from.
          #
          #   @return [String, nil]
          optional :ip_address, String

          # @!attribute ip_address_region
          #   ISO 3166-1 alpha-2 region of the caller's IP address.
          #
          #   @return [String, nil]
          optional :ip_address_region, String

          # @!attribute ip_distance_meters
          #   Distance between the phone number region and the IP location.
          #
          #   @return [Integer, nil]
          optional :ip_distance_meters, Integer

          # @!attribute lifecycle
          #   Chronological timeline of the verification: creation, message attempts with
          #   delivery events, code checks and signals reception. Omitted when Prelude holds
          #   no timeline for the verification.
          #
          #   @return [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle, nil]
          optional :lifecycle, -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle }

          # @!attribute phone_number_condition
          #   Whether the phone number was allow-listed, block-listed, or sandboxed at
          #   verification time.
          #
          #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition, nil]
          optional :phone_number_condition,
                   enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition }

          # @!attribute phone_number_current_condition
          #   Whether the phone number is currently allow-listed, block-listed, or sandboxed.
          #
          #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition, nil]
          optional :phone_number_current_condition,
                   enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition }

          # @!attribute phone_number_region
          #   ISO 3166-1 alpha-2 region of the phone number.
          #
          #   @return [String, nil]
          optional :phone_number_region, String

          # @!attribute signals
          #   The anti-fraud signals you forwarded when creating the verification.
          #
          #   @return [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals, nil]
          optional :signals, -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals }

          # @!attribute signals_hash_status
          #   Whether the SDK signals integrity check passed.
          #
          #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus, nil]
          optional :signals_hash_status,
                   enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus }

          # @!attribute template_id
          #   The template used for this verification.
          #
          #   @return [String, nil]
          optional :template_id, String

          # @!method initialize(id:, created_at:, expires_at:, phone_number:, status:, app_version: nil, block_reasons: nil, carrier: nil, correlation_id: nil, device_model: nil, device_platform: nil, ip_address: nil, ip_address_region: nil, ip_distance_meters: nil, lifecycle: nil, phone_number_condition: nil, phone_number_current_condition: nil, phone_number_region: nil, signals: nil, signals_hash_status: nil, template_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse} for more
          #   details.
          #
          #   A verification and everything Prelude recorded about it.
          #
          #   @param id [String] The verification identifier.
          #
          #   @param created_at [Time]
          #
          #   @param expires_at [Time]
          #
          #   @param phone_number [String] The E.164 phone number the verification targeted.
          #
          #   @param status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status] The outcome of the verification.
          #
          #   @param app_version [String] Version of your application, when known.
          #
          #   @param block_reasons [Array<Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason>] Why the anti-fraud system blocked the verification. Empty unless it did.
          #
          #   @param carrier [PreludeSDK::Models::Verification::Phone::PhoneVerificationCarrier] The end user's mobile network.
          #
          #   @param correlation_id [String] The correlation identifier you supplied when creating the verification.
          #
          #   @param device_model [String] Model of the end-user device, when known.
          #
          #   @param device_platform [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform] Platform of the end-user device, when known.
          #
          #   @param ip_address [String] IP address the verification was created from.
          #
          #   @param ip_address_region [String] ISO 3166-1 alpha-2 region of the caller's IP address.
          #
          #   @param ip_distance_meters [Integer] Distance between the phone number region and the IP location.
          #
          #   @param lifecycle [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle] Chronological timeline of the verification: creation, message attempts with deli
          #
          #   @param phone_number_condition [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition] Whether the phone number was allow-listed, block-listed, or sandboxed at verific
          #
          #   @param phone_number_current_condition [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition] Whether the phone number is currently allow-listed, block-listed, or sandboxed.
          #
          #   @param phone_number_region [String] ISO 3166-1 alpha-2 region of the phone number.
          #
          #   @param signals [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals] The anti-fraud signals you forwarded when creating the verification.
          #
          #   @param signals_hash_status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus] Whether the SDK signals integrity check passed.
          #
          #   @param template_id [String] The template used for this verification.

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
          # - `expired_signals` - The SDK signals were collected too long before the
          #   request.
          # - `shadowed` - The anti-fraud system flagged the verification without blocking
          #   it.
          #
          # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse#status
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

          module BlockReason
            extend PreludeSDK::Internal::Type::Enum

            BEHAVIORAL_PATTERN = :behavioral_pattern
            DEVICE_ATTRIBUTE = :device_attribute
            FRAUD_DATABASE = :fraud_database
            LOCATION_DISCREPANCY = :location_discrepancy
            MISSING_SIGNALS = :missing_signals
            NETWORK_FINGERPRINT = :network_fingerprint
            POOR_CONVERSION_HISTORY = :poor_conversion_history
            PREFIX_CONCENTRATION = :prefix_concentration
            REPEATED_NUMBER = :repeated_number
            SUSPECTED_REQUEST_TAMPERING = :suspected_request_tampering
            SUSPICIOUS_IP_ADDRESS = :suspicious_ip_address
            TEMPORARY_PHONE_NUMBER = :temporary_phone_number

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Platform of the end-user device, when known.
          #
          # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse#device_platform
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

          # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse#lifecycle
          class Lifecycle < PreludeSDK::Internal::Type::BaseModel
            # @!attribute events
            #
            #   @return [Array<PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event>]
            required :events,
                     -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event] }

            # @!attribute total_cost
            #
            #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney, nil]
            optional :total_cost, -> { PreludeSDK::Verification::Phone::PhoneVerificationMoney }

            # @!attribute undeliverable_route_count
            #   How many times the message was reported undeliverable by independent routes.
            #   Above zero usually means the phone number is incorrect or the device
            #   unreachable.
            #
            #   @return [Integer, nil]
            optional :undeliverable_route_count, Integer

            # @!method initialize(events:, total_cost: nil, undeliverable_route_count: nil)
            #   Some parameter documentations has been truncated, see
            #   {PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle}
            #   for more details.
            #
            #   Chronological timeline of the verification: creation, message attempts with
            #   delivery events, code checks and signals reception. Omitted when Prelude holds
            #   no timeline for the verification.
            #
            #   @param events [Array<PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event>]
            #
            #   @param total_cost [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney]
            #
            #   @param undeliverable_route_count [Integer] How many times the message was reported undeliverable by independent routes. Abo

            class Event < PreludeSDK::Internal::Type::BaseModel
              # @!attribute type
              #
              #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type]
              required :type,
                       enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type }

              # @!attribute attempt
              #   One message sent for this verification.
              #
              #   @return [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt, nil]
              optional :attempt,
                       -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt }

              # @!attribute check
              #   One code submission for this verification.
              #
              #   @return [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check, nil]
              optional :check,
                       -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check }

              # @!attribute create
              #
              #   @return [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Create, nil]
              optional :create,
                       -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Create }

              # @!attribute signals
              #
              #   @return [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals, nil]
              optional :signals,
                       -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals }

              # @!method initialize(type:, attempt: nil, check: nil, create: nil, signals: nil)
              #   One timeline entry. `type` names the single payload field that is set.
              #
              #   @param type [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Type]
              #
              #   @param attempt [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt] One message sent for this verification.
              #
              #   @param check [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check] One code submission for this verification.
              #
              #   @param create [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Create]
              #
              #   @param signals [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals]

              # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event#type
              module Type
                extend PreludeSDK::Internal::Type::Enum

                CREATE = :create
                ATTEMPT = :attempt
                CHECK = :check
                SIGNALS = :signals

                # @!method self.values
                #   @return [Array<Symbol>]
              end

              # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event#attempt
              class Attempt < PreludeSDK::Internal::Type::BaseModel
                # @!attribute id
                #
                #   @return [String]
                required :id, String

                # @!attribute created_at
                #
                #   @return [Time]
                required :created_at, Time

                # @!attribute carrier
                #   The end user's mobile network.
                #
                #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationCarrier, nil]
                optional :carrier, -> { PreludeSDK::Verification::Phone::PhoneVerificationCarrier }

                # @!attribute channel
                #
                #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel, nil]
                optional :channel,
                         enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel }

                # @!attribute content
                #   Message body. While the verification can still be completed, the code inside it
                #   is masked rather than removed.
                #
                #   @return [String, nil]
                optional :content, String

                # @!attribute cost
                #
                #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney, nil]
                optional :cost, -> { PreludeSDK::Verification::Phone::PhoneVerificationMoney }

                # @!attribute delivery_events
                #
                #   @return [Array<PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent>, nil]
                optional :delivery_events,
                         -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent] }

                # @!attribute delivery_status
                #
                #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus, nil]
                optional :delivery_status,
                         enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus }

                # @!attribute preferred_channel
                #   Channel you asked for, when it differs from the one used.
                #
                #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel, nil]
                optional :preferred_channel,
                         enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel }

                # @!attribute status
                #
                #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status, nil]
                optional :status,
                         enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status }

                # @!attribute trigger
                #   What caused the attempt.
                #
                #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger, nil]
                optional :trigger,
                         enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger }

                # @!method initialize(id:, created_at:, carrier: nil, channel: nil, content: nil, cost: nil, delivery_events: nil, delivery_status: nil, preferred_channel: nil, status: nil, trigger: nil)
                #   Some parameter documentations has been truncated, see
                #   {PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt}
                #   for more details.
                #
                #   One message sent for this verification.
                #
                #   @param id [String]
                #
                #   @param created_at [Time]
                #
                #   @param carrier [PreludeSDK::Models::Verification::Phone::PhoneVerificationCarrier] The end user's mobile network.
                #
                #   @param channel [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Channel]
                #
                #   @param content [String] Message body. While the verification can still be completed, the code inside it
                #
                #   @param cost [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney]
                #
                #   @param delivery_events [Array<PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent>]
                #
                #   @param delivery_status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryStatus]
                #
                #   @param preferred_channel [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::PreferredChannel] Channel you asked for, when it differs from the one used.
                #
                #   @param status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Status]
                #
                #   @param trigger [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::Trigger] What caused the attempt.

                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt#channel
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

                class DeliveryEvent < PreludeSDK::Internal::Type::BaseModel
                  # @!attribute received_at
                  #
                  #   @return [Time]
                  required :received_at, Time

                  # @!attribute status
                  #   The state this event reported. It is finer-grained than the attempt's
                  #   `delivery_status` and includes the states a silent verification goes through.
                  #
                  #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status]
                  required :status,
                           enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status }

                  # @!method initialize(received_at:, status:)
                  #   Some parameter documentations has been truncated, see
                  #   {PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent}
                  #   for more details.
                  #
                  #   @param received_at [Time]
                  #
                  #   @param status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent::Status] The state this event reported. It is finer-grained than the attempt's
                  #   `delivery\_

                  # The state this event reported. It is finer-grained than the attempt's
                  # `delivery_status` and includes the states a silent verification goes through.
                  #
                  # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt::DeliveryEvent#status
                  module Status
                    extend PreludeSDK::Internal::Type::Enum

                    UNKNOWN = :unknown
                    SUBMITTED = :submitted
                    IN_TRANSIT = :in_transit
                    DELIVERED = :delivered
                    UNDELIVERABLE = :undeliverable
                    EXPIRED = :expired
                    READ = :read
                    SILENT_STARTED = :silent_started
                    SILENT_VERIFIED = :silent_verified
                    SILENT_MISMATCH = :silent_mismatch

                    # @!method self.values
                    #   @return [Array<Symbol>]
                  end
                end

                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt#delivery_status
                module DeliveryStatus
                  extend PreludeSDK::Internal::Type::Enum

                  UNKNOWN = :unknown
                  IN_TRANSIT = :in_transit
                  DELIVERED = :delivered
                  UNDELIVERABLE = :undeliverable
                  READ = :read

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # Channel you asked for, when it differs from the one used.
                #
                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt#preferred_channel
                module PreferredChannel
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

                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt#status
                module Status
                  extend PreludeSDK::Internal::Type::Enum

                  SUCCEEDED = :succeeded
                  FAILED = :failed

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end

                # What caused the attempt.
                #
                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Attempt#trigger
                module Trigger
                  extend PreludeSDK::Internal::Type::Enum

                  INITIAL = :initial
                  AUTO_RETRY = :auto_retry
                  USER_RETRY = :user_retry

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event#check
              class Check < PreludeSDK::Internal::Type::BaseModel
                # @!attribute created_at
                #
                #   @return [Time]
                required :created_at, Time

                # @!attribute is_valid
                #
                #   @return [Boolean]
                required :is_valid, PreludeSDK::Internal::Type::Boolean

                # @!attribute channel
                #
                #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel, nil]
                optional :channel,
                         enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel }

                # @!attribute psd2_info
                #   Present on checks against a `prelude:psd2` code.
                #
                #   @return [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info, nil]
                optional :psd2_info,
                         -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info }

                # @!attribute status_detail
                #   Why an invalid check failed, when known.
                #
                #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail, nil]
                optional :status_detail,
                         enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail }

                # @!attribute value
                #   The submitted code. Absent while the verification can still be completed, so
                #   that a check in flight cannot be read back through this endpoint, and absent on
                #   silent verification checks, which carry no code.
                #
                #   @return [String, nil]
                optional :value, String

                # @!method initialize(created_at:, is_valid:, channel: nil, psd2_info: nil, status_detail: nil, value: nil)
                #   Some parameter documentations has been truncated, see
                #   {PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check}
                #   for more details.
                #
                #   One code submission for this verification.
                #
                #   @param created_at [Time]
                #
                #   @param is_valid [Boolean]
                #
                #   @param channel [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Channel]
                #
                #   @param psd2_info [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info] Present on checks against a `prelude:psd2` code.
                #
                #   @param status_detail [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::StatusDetail] Why an invalid check failed, when known.
                #
                #   @param value [String] The submitted code. Absent while the verification can still be completed, so tha

                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check#channel
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

                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check#psd2_info
                class Psd2Info < PreludeSDK::Internal::Type::BaseModel
                  # @!attribute expected_transaction
                  #   The transaction submitted when the code was issued.
                  #
                  #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationPsd2Transaction, nil]
                  optional :expected_transaction, -> { PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction }

                  # @!attribute received_transaction
                  #   The transaction submitted with this check. Differs from `expected_transaction`
                  #   when `status_detail` is `transaction_mismatch`.
                  #
                  #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationPsd2Transaction, nil]
                  optional :received_transaction, -> { PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction }

                  # @!method initialize(expected_transaction: nil, received_transaction: nil)
                  #   Some parameter documentations has been truncated, see
                  #   {PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check::Psd2Info}
                  #   for more details.
                  #
                  #   Present on checks against a `prelude:psd2` code.
                  #
                  #   @param expected_transaction [PreludeSDK::Models::Verification::Phone::PhoneVerificationPsd2Transaction] The transaction submitted when the code was issued.
                  #
                  #   @param received_transaction [PreludeSDK::Models::Verification::Phone::PhoneVerificationPsd2Transaction] The transaction submitted with this check. Differs from `expected_transaction` w
                end

                # Why an invalid check failed, when known.
                #
                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Check#status_detail
                module StatusDetail
                  extend PreludeSDK::Internal::Type::Enum

                  EXPIRED_ATTEMPT = :expired_attempt
                  EXPIRED_AUTH = :expired_auth
                  RATE_LIMITED = :rate_limited
                  TRANSACTION_MISSING = :transaction_missing
                  TRANSACTION_MISMATCH = :transaction_mismatch

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end

              # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event#create
              class Create < PreludeSDK::Internal::Type::BaseModel
                # @!attribute created_at
                #
                #   @return [Time]
                required :created_at, Time

                # @!attribute cost
                #
                #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney, nil]
                optional :cost, -> { PreludeSDK::Verification::Phone::PhoneVerificationMoney }

                # @!method initialize(created_at:, cost: nil)
                #   @param created_at [Time]
                #   @param cost [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney]
              end

              # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event#signals
              class Signals < PreludeSDK::Internal::Type::BaseModel
                # @!attribute received_at
                #
                #   @return [Time]
                required :received_at, Time

                # @!attribute expired_at
                #
                #   @return [Time, nil]
                optional :expired_at, Time

                # @!attribute status
                #
                #   @return [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status, nil]
                optional :status,
                         enum: -> { PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status }

                # @!method initialize(received_at:, expired_at: nil, status: nil)
                #   @param received_at [Time]
                #   @param expired_at [Time]
                #   @param status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals::Status]

                # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle::Event::Signals#status
                module Status
                  extend PreludeSDK::Internal::Type::Enum

                  VALID = :valid
                  INVALID = :invalid

                  # @!method self.values
                  #   @return [Array<Symbol>]
                end
              end
            end
          end

          # Whether the phone number was allow-listed, block-listed, or sandboxed at
          # verification time.
          #
          # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse#phone_number_condition
          module PhoneNumberCondition
            extend PreludeSDK::Internal::Type::Enum

            ALLOW_LISTED = :allow_listed
            BLOCK_LISTED = :block_listed
            SANDBOXED = :sandboxed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Whether the phone number is currently allow-listed, block-listed, or sandboxed.
          #
          # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse#phone_number_current_condition
          module PhoneNumberCurrentCondition
            extend PreludeSDK::Internal::Type::Enum

            ALLOW_LISTED = :allow_listed
            BLOCK_LISTED = :block_listed
            SANDBOXED = :sandboxed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse#signals
          class Signals < PreludeSDK::Internal::Type::BaseModel
            # @!attribute is_trusted_user
            #   Whether you flagged this end user as trusted when creating the verification.
            #   Declared by you, not computed by Prelude.
            #
            #   @return [Boolean]
            required :is_trusted_user, PreludeSDK::Internal::Type::Boolean

            # @!attribute device_id
            #   End-user device identifier you forwarded.
            #
            #   @return [String, nil]
            optional :device_id, String

            # @!attribute ja4_fingerprint
            #   TLS fingerprint you forwarded.
            #
            #   @return [String, nil]
            optional :ja4_fingerprint, String

            # @!attribute os_version
            #
            #   @return [String, nil]
            optional :os_version, String

            # @!attribute user_agent
            #
            #   @return [String, nil]
            optional :user_agent, String

            # @!method initialize(is_trusted_user:, device_id: nil, ja4_fingerprint: nil, os_version: nil, user_agent: nil)
            #   Some parameter documentations has been truncated, see
            #   {PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals} for
            #   more details.
            #
            #   The anti-fraud signals you forwarded when creating the verification.
            #
            #   @param is_trusted_user [Boolean] Whether you flagged this end user as trusted when creating the verification. Dec
            #
            #   @param device_id [String] End-user device identifier you forwarded.
            #
            #   @param ja4_fingerprint [String] TLS fingerprint you forwarded.
            #
            #   @param os_version [String]
            #
            #   @param user_agent [String]
          end

          # Whether the SDK signals integrity check passed.
          #
          # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse#signals_hash_status
          module SignalsHashStatus
            extend PreludeSDK::Internal::Type::Enum

            VALID = :valid
            INVALID = :invalid

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
