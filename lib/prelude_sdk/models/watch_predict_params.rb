# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#predict
    class WatchPredictParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute target
      #   The signup identifier to score — a phone number or email address.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Target]
      required :target, -> { PreludeSDK::WatchPredictParams::Target }

      # @!attribute dispatch_id
      #   The identifier of the dispatch that came from the front-end SDK.
      #
      #   @return [String, nil]
      optional :dispatch_id, String

      # @!attribute metadata
      #   The metadata for this prediction.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Metadata, nil]
      optional :metadata, -> { PreludeSDK::WatchPredictParams::Metadata }

      # @!attribute signals
      #   The signals used for anti-fraud. For more details, refer to
      #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Signals, nil]
      optional :signals, -> { PreludeSDK::WatchPredictParams::Signals }

      # @!method initialize(target:, dispatch_id: nil, metadata: nil, signals: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchPredictParams} for more details.
      #
      #   @param target [PreludeSDK::Models::WatchPredictParams::Target] The signup identifier to score — a phone number or email address.
      #
      #   @param dispatch_id [String] The identifier of the dispatch that came from the front-end SDK.
      #
      #   @param metadata [PreludeSDK::Models::WatchPredictParams::Metadata] The metadata for this prediction.
      #
      #   @param signals [PreludeSDK::Models::WatchPredictParams::Signals] The signals used for anti-fraud. For more details, refer to [Signals](/verify/v2
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Target < PreludeSDK::Internal::Type::BaseModel
        # @!attribute type
        #   The type of the target. Either "phone_number" or "email_address".
        #
        #   @return [Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type]
        required :type, enum: -> { PreludeSDK::WatchPredictParams::Target::Type }

        # @!attribute value
        #   An E.164 formatted phone number or an email address.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(type:, value:)
        #   The signup identifier to score — a phone number or email address.
        #
        #   @param type [Symbol, PreludeSDK::Models::WatchPredictParams::Target::Type] The type of the target. Either "phone_number" or "email_address".
        #
        #   @param value [String] An E.164 formatted phone number or an email address.

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
        # @!attribute correlation_id
        #   A user-defined identifier to correlate this prediction with. It is returned in
        #   the response and any webhook events that refer to this prediction.
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!method initialize(correlation_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::WatchPredictParams::Metadata} for more details.
        #
        #   The metadata for this prediction.
        #
        #   @param correlation_id [String] A user-defined identifier to correlate this prediction with. It is returned in t
      end

      class Signals < PreludeSDK::Internal::Type::BaseModel
        # @!attribute app_version
        #   The version of your application.
        #
        #   @return [String, nil]
        optional :app_version, String

        # @!attribute device_id
        #   A unique ID for the user's device. You should ensure that each user device has a
        #   unique `device_id` value. Ideally, for Android, this corresponds to the
        #   `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
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
        #   @return [Symbol, PreludeSDK::Models::WatchPredictParams::Signals::DevicePlatform, nil]
        optional :device_platform, enum: -> { PreludeSDK::WatchPredictParams::Signals::DevicePlatform }

        # @!attribute ip
        #   The public IP v4 or v6 address of the end-user's device. You should collect this
        #   from your backend. If your backend is behind a proxy, use the `X-Forwarded-For`,
        #   `Forwarded`, `True-Client-IP`, `CF-Connecting-IP` or an equivalent header to get
        #   the actual public IP of the end-user's device.
        #
        #   @return [String, nil]
        optional :ip, String

        # @!attribute is_trusted_user
        #   This signal should indicate a higher level of trust, explicitly stating that the
        #   user is genuine. Contact us to discuss your use case. For more details, refer to
        #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
        #
        #   @return [Boolean, nil]
        optional :is_trusted_user, PreludeSDK::Internal::Type::Boolean

        # @!attribute ja4_fingerprint
        #   The JA4 fingerprint observed for the end-user's connection. Prelude will infer
        #   it automatically when you use our Frontend SDKs (which use Prelude's edge
        #   network), but you can also forward the value if you terminate TLS yourself.
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
        #   {PreludeSDK::Models::WatchPredictParams::Signals} for more details.
        #
        #   The signals used for anti-fraud. For more details, refer to
        #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
        #
        #   @param app_version [String] The version of your application.
        #
        #   @param device_id [String] A unique ID for the user's device. You should ensure that each user device has a
        #
        #   @param device_model [String] The model of the user's device.
        #
        #   @param device_platform [Symbol, PreludeSDK::Models::WatchPredictParams::Signals::DevicePlatform] The type of the user's device.
        #
        #   @param ip [String] The public IP v4 or v6 address of the end-user's device. You should collect this
        #
        #   @param is_trusted_user [Boolean] This signal should indicate a higher level of trust, explicitly stating that the
        #
        #   @param ja4_fingerprint [String] The JA4 fingerprint observed for the end-user's connection. Prelude will infer i
        #
        #   @param os_version [String] The version of the user's device operating system.
        #
        #   @param user_agent [String] The user agent of the user's device. If the individual fields (os_version, devic

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
