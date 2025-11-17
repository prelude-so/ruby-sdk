# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#send_feedbacks
    class WatchSendFeedbacksParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute feedbacks
      #   A list of feedbacks to send.
      #
      #   @return [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>]
      required :feedbacks,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::WatchSendFeedbacksParams::Feedback] }

      # @!method initialize(feedbacks:, request_options: {})
      #   @param feedbacks [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>] A list of feedbacks to send.
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Feedback < PreludeSDK::Internal::Type::BaseModel
        # @!attribute target
        #   The feedback target. Only supports phone numbers for now.
        #
        #   @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target]
        required :target, -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Target }

        # @!attribute type
        #   The type of feedback.
        #
        #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Type]
        required :type, enum: -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Type }

        # @!attribute dispatch_id
        #   The identifier of the dispatch that came from the front-end SDK.
        #
        #   @return [String, nil]
        optional :dispatch_id, String

        # @!attribute metadata
        #   The metadata for this feedback.
        #
        #   @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata, nil]
        optional :metadata, -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata }

        # @!attribute signals
        #   The signals used for anti-fraud. For more details, refer to
        #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
        #
        #   @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals, nil]
        optional :signals, -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals }

        # @!method initialize(target:, type:, dispatch_id: nil, metadata: nil, signals: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::WatchSendFeedbacksParams::Feedback} for more details.
        #
        #   @param target [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target] The feedback target. Only supports phone numbers for now.
        #
        #   @param type [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Type] The type of feedback.
        #
        #   @param dispatch_id [String] The identifier of the dispatch that came from the front-end SDK.
        #
        #   @param metadata [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata] The metadata for this feedback.
        #
        #   @param signals [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals] The signals used for anti-fraud. For more details, refer to [Signals](/verify/v2

        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#target
        class Target < PreludeSDK::Internal::Type::BaseModel
          # @!attribute type
          #   The type of the target. Either "phone_number" or "email_address".
          #
          #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target::Type]
          required :type, enum: -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type }

          # @!attribute value
          #   An E.164 formatted phone number or an email address.
          #
          #   @return [String]
          required :value, String

          # @!method initialize(type:, value:)
          #   The feedback target. Only supports phone numbers for now.
          #
          #   @param type [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target::Type] The type of the target. Either "phone_number" or "email_address".
          #
          #   @param value [String] An E.164 formatted phone number or an email address.

          # The type of the target. Either "phone_number" or "email_address".
          #
          # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target#type
          module Type
            extend PreludeSDK::Internal::Type::Enum

            PHONE_NUMBER = :phone_number
            EMAIL_ADDRESS = :email_address

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # The type of feedback.
        #
        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#type
        module Type
          extend PreludeSDK::Internal::Type::Enum

          VERIFICATION_STARTED = :"verification.started"
          VERIFICATION_COMPLETED = :"verification.completed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#metadata
        class Metadata < PreludeSDK::Internal::Type::BaseModel
          # @!attribute correlation_id
          #   A user-defined identifier to correlate this feedback with. It is returned in the
          #   response and any webhook events that refer to this feedback.
          #
          #   @return [String, nil]
          optional :correlation_id, String

          # @!method initialize(correlation_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata} for more
          #   details.
          #
          #   The metadata for this feedback.
          #
          #   @param correlation_id [String] A user-defined identifier to correlate this feedback with. It is returned in the
        end

        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#signals
        class Signals < PreludeSDK::Internal::Type::BaseModel
          # @!attribute app_version
          #   The version of your application.
          #
          #   @return [String, nil]
          optional :app_version, String

          # @!attribute device_id
          #   The unique identifier for the user's device. For Android, this corresponds to
          #   the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
          #
          #   @return [String, nil]
          optional :device_id, String

          # @!attribute device_model
          #   The model of the user's device.
          #
          #   @return [String, nil]
          optional :device_model, String

          # @!attribute device_platform
          #   The type of the user's device.
          #
          #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform, nil]
          optional :device_platform,
                   enum: -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform }

          # @!attribute ip
          #   The IP address of the user's device.
          #
          #   @return [String, nil]
          optional :ip, String

          # @!attribute is_trusted_user
          #   This signal should provide a higher level of trust, indicating that the user is
          #   genuine. Contact us to discuss your use case. For more details, refer to
          #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
          #
          #   @return [Boolean, nil]
          optional :is_trusted_user, PreludeSDK::Internal::Type::Boolean

          # @!attribute ja4_fingerprint
          #   The JA4 fingerprint observed for the connection. Prelude will infer it
          #   automatically when requests go through our client SDK (which uses Prelude's
          #   edge), but you can also provide it explicitly if you terminate TLS yourself.
          #
          #   @return [String, nil]
          optional :ja4_fingerprint, String

          # @!attribute os_version
          #   The version of the user's device operating system.
          #
          #   @return [String, nil]
          optional :os_version, String

          # @!attribute user_agent
          #   The user agent of the user's device. If the individual fields (os_version,
          #   device_platform, device_model) are provided, we will prioritize those values
          #   instead of parsing them from the user agent string.
          #
          #   @return [String, nil]
          optional :user_agent, String

          # @!method initialize(app_version: nil, device_id: nil, device_model: nil, device_platform: nil, ip: nil, is_trusted_user: nil, ja4_fingerprint: nil, os_version: nil, user_agent: nil)
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals} for more
          #   details.
          #
          #   The signals used for anti-fraud. For more details, refer to
          #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
          #
          #   @param app_version [String] The version of your application.
          #
          #   @param device_id [String] The unique identifier for the user's device. For Android, this corresponds to th
          #
          #   @param device_model [String] The model of the user's device.
          #
          #   @param device_platform [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform] The type of the user's device.
          #
          #   @param ip [String] The IP address of the user's device.
          #
          #   @param is_trusted_user [Boolean] This signal should provide a higher level of trust, indicating that the user is
          #
          #   @param ja4_fingerprint [String] The JA4 fingerprint observed for the connection. Prelude will infer it automatic
          #
          #   @param os_version [String] The version of the user's device operating system.
          #
          #   @param user_agent [String] The user agent of the user's device. If the individual fields (os_version, devic

          # The type of the user's device.
          #
          # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals#device_platform
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
        end
      end
    end
  end
end
