# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#predict
    class WatchPredictParams < PreludeSDK::Internal::Type::BaseModel
      # @!parse
      #   extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute target
      #   The prediction target. Only supports phone numbers for now.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Target]
      required :target, -> { PreludeSDK::Models::WatchPredictParams::Target }

      # @!attribute [r] dispatch_id
      #   The identifier of the dispatch that came from the front-end SDK.
      #
      #   @return [String, nil]
      optional :dispatch_id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :dispatch_id

      # @!attribute [r] metadata
      #   The metadata for this prediction.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Metadata, nil]
      optional :metadata, -> { PreludeSDK::Models::WatchPredictParams::Metadata }

      # @!parse
      #   # @return [PreludeSDK::Models::WatchPredictParams::Metadata]
      #   attr_writer :metadata

      # @!attribute [r] signals
      #   The signals used for anti-fraud. For more details, refer to
      #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Signals, nil]
      optional :signals, -> { PreludeSDK::Models::WatchPredictParams::Signals }

      # @!parse
      #   # @return [PreludeSDK::Models::WatchPredictParams::Signals]
      #   attr_writer :signals

      # @!method initialize(target:, dispatch_id: nil, metadata: nil, signals: nil, request_options: {})
      #   @param target [PreludeSDK::Models::WatchPredictParams::Target]
      #   @param dispatch_id [String]
      #   @param metadata [PreludeSDK::Models::WatchPredictParams::Metadata]
      #   @param signals [PreludeSDK::Models::WatchPredictParams::Signals]
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Target < PreludeSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of the target. Either "phone_number" or "email_address".
        #
        #   @return [Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type]
        required :type, enum: -> { PreludeSDK::Models::WatchPredictParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number or an email address.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   The prediction target. Only supports phone numbers for now.
        #
        #   @param type [Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type]
        #   @param value [String]

        # The type of the target. Either "phone_number" or "email_address".
        #
        # @see PreludeSDK::Models::WatchPredictParams::Target#type
        module Type
          extend PreludeSDK::Internal::Type::Enum

          PHONE_NUMBER = :phone_number
          EMAIL_ADDRESS = :email_address

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Metadata < PreludeSDK::Internal::Type::BaseModel
        # @!attribute [r] correlation_id
        #   A user-defined identifier to correlate this prediction with.
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!parse
        #   # @return [String]
        #   attr_writer :correlation_id

        # @!method initialize(correlation_id: nil)
        #   The metadata for this prediction.
        #
        #   @param correlation_id [String]
      end

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
        #   @return [Symbol, PreludeSDK::Models::WatchPredictParams::Signals::DevicePlatform, nil]
        optional :device_platform, enum: -> { PreludeSDK::Models::WatchPredictParams::Signals::DevicePlatform }

        # @!parse
        #   # @return [Symbol, PreludeSDK::Models::WatchPredictParams::Signals::DevicePlatform]
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

        # @!method initialize(app_version: nil, device_id: nil, device_model: nil, device_platform: nil, ip: nil, is_trusted_user: nil, os_version: nil, user_agent: nil)
        #   The signals used for anti-fraud. For more details, refer to
        #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
        #
        #   @param app_version [String]
        #   @param device_id [String]
        #   @param device_model [String]
        #   @param device_platform [Symbol, PreludeSDK::Models::WatchPredictParams::Signals::DevicePlatform]
        #   @param ip [String]
        #   @param is_trusted_user [Boolean]
        #   @param os_version [String]
        #   @param user_agent [String]

        # The type of the user's device.
        #
        # @see PreludeSDK::Models::WatchPredictParams::Signals#device_platform
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
