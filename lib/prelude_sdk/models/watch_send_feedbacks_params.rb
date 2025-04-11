# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#send_feedbacks
    class WatchSendFeedbacksParams < PreludeSDK::Internal::Type::BaseModel
      # @!parse
      #   extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute feedbacks
      #   A list of feedbacks to send.
      #
      #   @return [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>]
      required :feedbacks,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::WatchSendFeedbacksParams::Feedback] }

      # @!parse
      #   # @param feedbacks [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>]
      #   # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      #   #
      #   def initialize(feedbacks:, request_options: {}, **) = super

      # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

      class Feedback < PreludeSDK::Internal::Type::BaseModel
        # @!attribute target
        #   The feedback target. Only supports phone numbers for now.
        #
        #   @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target]
        required :target, -> { PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target }

        # @!attribute type
        #   The type of feedback.
        #
        #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Type }

        # @!attribute [r] dispatch_id
        #   The identifier of the dispatch that came from the front-end SDK.
        #
        #   @return [String, nil]
        optional :dispatch_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :dispatch_id

        # @!attribute [r] metadata
        #   The metadata for this feedback.
        #
        #   @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata, nil]
        optional :metadata, -> { PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata }

        # @!parse
        #   # @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata]
        #   attr_writer :metadata

        # @!attribute [r] signals
        #   The signals used for anti-fraud. For more details, refer to
        #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
        #
        #   @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals, nil]
        optional :signals, -> { PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals }

        # @!parse
        #   # @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals]
        #   attr_writer :signals

        # @!parse
        #   # @param target [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target]
        #   # @param type [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Type]
        #   # @param dispatch_id [String]
        #   # @param metadata [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata]
        #   # @param signals [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals]
        #   #
        #   def initialize(target:, type:, dispatch_id: nil, metadata: nil, signals: nil, **) = super

        # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#target
        class Target < PreludeSDK::Internal::Type::BaseModel
          # @!attribute type
          #   The type of the target. Either "phone_number" or "email_address".
          #
          #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target::Type]
          required :type, enum: -> { PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target::Type }

          # @!attribute value
          #   An E.164 formatted phone number or an email address.
          #
          #   @return [String]
          required :value, String

          # @!parse
          #   # The feedback target. Only supports phone numbers for now.
          #   #
          #   # @param type [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target::Type]
          #   # @param value [String]
          #   #
          #   def initialize(type:, value:, **) = super

          # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

          # The type of the target. Either "phone_number" or "email_address".
          #
          # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target#type
          module Type
            extend PreludeSDK::Internal::Type::Enum

            PHONE_NUMBER = :phone_number
            EMAIL_ADDRESS = :email_address

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end

        # The type of feedback.
        #
        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#type
        module Type
          extend PreludeSDK::Internal::Type::Enum

          VERIFICATION_STARTED = :"verification.started"
          VERIFICATION_COMPLETED = :"verification.completed"

          finalize!

          # @!parse
          #   # @return [Array<Symbol>]
          #   def self.values; end
        end

        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#metadata
        class Metadata < PreludeSDK::Internal::Type::BaseModel
          # @!attribute [r] correlation_id
          #   A user-defined identifier to correlate this feedback with.
          #
          #   @return [String, nil]
          optional :correlation_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :correlation_id

          # @!parse
          #   # The metadata for this feedback.
          #   #
          #   # @param correlation_id [String]
          #   #
          #   def initialize(correlation_id: nil, **) = super

          # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void
        end

        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#signals
        class Signals < PreludeSDK::Internal::Type::BaseModel
          # @!attribute [r] app_version
          #   The version of your application.
          #
          #   @return [String, nil]
          optional :app_version, String

          # @!parse
          #   # @return [String]
          #   attr_writer :app_version

          # @!attribute [r] device_id
          #   The unique identifier for the user's device. For Android, this corresponds to
          #   the `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
          #
          #   @return [String, nil]
          optional :device_id, String

          # @!parse
          #   # @return [String]
          #   attr_writer :device_id

          # @!attribute [r] device_model
          #   The model of the user's device.
          #
          #   @return [String, nil]
          optional :device_model, String

          # @!parse
          #   # @return [String]
          #   attr_writer :device_model

          # @!attribute [r] device_platform
          #   The type of the user's device.
          #
          #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform, nil]
          optional :device_platform,
                   enum: -> { PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform }

          # @!parse
          #   # @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform]
          #   attr_writer :device_platform

          # @!attribute [r] ip
          #   The IP address of the user's device.
          #
          #   @return [String, nil]
          optional :ip, String

          # @!parse
          #   # @return [String]
          #   attr_writer :ip

          # @!attribute [r] is_trusted_user
          #   This signal should provide a higher level of trust, indicating that the user is
          #   genuine. For more details, refer to
          #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
          #
          #   @return [Boolean, nil]
          optional :is_trusted_user, PreludeSDK::Internal::Type::Boolean

          # @!parse
          #   # @return [Boolean]
          #   attr_writer :is_trusted_user

          # @!attribute [r] os_version
          #   The version of the user's device operating system.
          #
          #   @return [String, nil]
          optional :os_version, String

          # @!parse
          #   # @return [String]
          #   attr_writer :os_version

          # @!attribute [r] user_agent
          #   The user agent of the user's device. If the individual fields (os_version,
          #   device_platform, device_model) are provided, we will prioritize those values
          #   instead of parsing them from the user agent string.
          #
          #   @return [String, nil]
          optional :user_agent, String

          # @!parse
          #   # @return [String]
          #   attr_writer :user_agent

          # @!parse
          #   # The signals used for anti-fraud. For more details, refer to
          #   # [Signals](/verify/v2/documentation/prevent-fraud#signals).
          #   #
          #   # @param app_version [String]
          #   # @param device_id [String]
          #   # @param device_model [String]
          #   # @param device_platform [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Signals::DevicePlatform]
          #   # @param ip [String]
          #   # @param is_trusted_user [Boolean]
          #   # @param os_version [String]
          #   # @param user_agent [String]
          #   #
          #   def initialize(
          #     app_version: nil,
          #     device_id: nil,
          #     device_model: nil,
          #     device_platform: nil,
          #     ip: nil,
          #     is_trusted_user: nil,
          #     os_version: nil,
          #     user_agent: nil,
          #     **
          #   )
          #     super
          #   end

          # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

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

            finalize!

            # @!parse
            #   # @return [Array<Symbol>]
            #   def self.values; end
          end
        end
      end
    end
  end
end
