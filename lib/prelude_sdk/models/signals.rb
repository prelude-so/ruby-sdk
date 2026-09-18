# frozen_string_literal: true

module PreludeSDK
  module Models
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
      #   @return [Symbol, PreludeSDK::Models::Signals::DevicePlatform, nil]
      optional :device_platform, enum: -> { PreludeSDK::Signals::DevicePlatform }

      # @!attribute existing_user
      #   Whether the end-user already exists in your system, for example an existing
      #   account signing in again rather than a first-time signup. Unlike
      #   `is_trusted_user`, this signal does not bypass fraud checks; it is taken into
      #   account as one additional anti-fraud signal. For more details, refer to
      #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
      #
      #   @return [Boolean, nil]
      optional :existing_user, PreludeSDK::Internal::Type::Boolean

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

      # @!method initialize(app_version: nil, device_id: nil, device_model: nil, device_platform: nil, existing_user: nil, ip: nil, is_trusted_user: nil, ja4_fingerprint: nil, os_version: nil, user_agent: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::Signals} for more details.
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
      #   @param device_platform [Symbol, PreludeSDK::Models::Signals::DevicePlatform] The type of the user's device.
      #
      #   @param existing_user [Boolean] Whether the end-user already exists in your system, for example an existing acco
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
      # @see PreludeSDK::Models::Signals#device_platform
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
