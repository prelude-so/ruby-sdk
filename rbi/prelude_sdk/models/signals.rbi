# typed: strong

module PreludeSDK
  module Models
    class Signals < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(PreludeSDK::Signals, PreludeSDK::Internal::AnyHash)
        end

      # The version of your application.
      sig { returns(T.nilable(String)) }
      attr_reader :app_version

      sig { params(app_version: String).void }
      attr_writer :app_version

      # A unique ID for the user's device. You should ensure that each user device has a
      # unique `device_id` value. Ideally, for Android, this corresponds to the
      # `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
      sig { returns(T.nilable(String)) }
      attr_reader :device_id

      sig { params(device_id: String).void }
      attr_writer :device_id

      # The model of the user's device.
      sig { returns(T.nilable(String)) }
      attr_reader :device_model

      sig { params(device_model: String).void }
      attr_writer :device_model

      # The type of the user's device.
      sig { returns(T.nilable(PreludeSDK::Signals::DevicePlatform::OrSymbol)) }
      attr_reader :device_platform

      sig do
        params(
          device_platform: PreludeSDK::Signals::DevicePlatform::OrSymbol
        ).void
      end
      attr_writer :device_platform

      # Whether the end-user already exists in your system, for example an existing
      # account signing in again rather than a first-time signup. Unlike
      # `is_trusted_user`, this signal does not bypass fraud checks; it is taken into
      # account as one additional anti-fraud signal. For more details, refer to
      # [Signals](/verify/v2/documentation/prevent-fraud#signals).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :existing_user

      sig { params(existing_user: T::Boolean).void }
      attr_writer :existing_user

      # The public IP v4 or v6 address of the end-user's device. You should collect this
      # from your backend. If your backend is behind a proxy, use the `X-Forwarded-For`,
      # `Forwarded`, `True-Client-IP`, `CF-Connecting-IP` or an equivalent header to get
      # the actual public IP of the end-user's device.
      sig { returns(T.nilable(String)) }
      attr_reader :ip

      sig { params(ip: String).void }
      attr_writer :ip

      # This signal should indicate a higher level of trust, explicitly stating that the
      # user is genuine. Contact us to discuss your use case. For more details, refer to
      # [Signals](/verify/v2/documentation/prevent-fraud#signals).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_trusted_user

      sig { params(is_trusted_user: T::Boolean).void }
      attr_writer :is_trusted_user

      # The JA4 fingerprint observed for the end-user's connection. Prelude will infer
      # it automatically when you use our Frontend SDKs (which use Prelude's edge
      # network), but you can also forward the value if you terminate TLS yourself.
      sig { returns(T.nilable(String)) }
      attr_reader :ja4_fingerprint

      sig { params(ja4_fingerprint: String).void }
      attr_writer :ja4_fingerprint

      # The version of the user's device operating system.
      sig { returns(T.nilable(String)) }
      attr_reader :os_version

      sig { params(os_version: String).void }
      attr_writer :os_version

      # The user agent of the user's device. If the individual fields (os_version,
      # device_platform, device_model) are provided, we will prioritize those values
      # instead of parsing them from the user agent string.
      sig { returns(T.nilable(String)) }
      attr_reader :user_agent

      sig { params(user_agent: String).void }
      attr_writer :user_agent

      # The signals used for anti-fraud. For more details, refer to
      # [Signals](/verify/v2/documentation/prevent-fraud#signals).
      sig do
        params(
          app_version: String,
          device_id: String,
          device_model: String,
          device_platform: PreludeSDK::Signals::DevicePlatform::OrSymbol,
          existing_user: T::Boolean,
          ip: String,
          is_trusted_user: T::Boolean,
          ja4_fingerprint: String,
          os_version: String,
          user_agent: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The version of your application.
        app_version: nil,
        # A unique ID for the user's device. You should ensure that each user device has a
        # unique `device_id` value. Ideally, for Android, this corresponds to the
        # `ANDROID_ID` and for iOS, this corresponds to the `identifierForVendor`.
        device_id: nil,
        # The model of the user's device.
        device_model: nil,
        # The type of the user's device.
        device_platform: nil,
        # Whether the end-user already exists in your system, for example an existing
        # account signing in again rather than a first-time signup. Unlike
        # `is_trusted_user`, this signal does not bypass fraud checks; it is taken into
        # account as one additional anti-fraud signal. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        existing_user: nil,
        # The public IP v4 or v6 address of the end-user's device. You should collect this
        # from your backend. If your backend is behind a proxy, use the `X-Forwarded-For`,
        # `Forwarded`, `True-Client-IP`, `CF-Connecting-IP` or an equivalent header to get
        # the actual public IP of the end-user's device.
        ip: nil,
        # This signal should indicate a higher level of trust, explicitly stating that the
        # user is genuine. Contact us to discuss your use case. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        is_trusted_user: nil,
        # The JA4 fingerprint observed for the end-user's connection. Prelude will infer
        # it automatically when you use our Frontend SDKs (which use Prelude's edge
        # network), but you can also forward the value if you terminate TLS yourself.
        ja4_fingerprint: nil,
        # The version of the user's device operating system.
        os_version: nil,
        # The user agent of the user's device. If the individual fields (os_version,
        # device_platform, device_model) are provided, we will prioritize those values
        # instead of parsing them from the user agent string.
        user_agent: nil
      )
      end

      sig do
        override.returns(
          {
            app_version: String,
            device_id: String,
            device_model: String,
            device_platform: PreludeSDK::Signals::DevicePlatform::OrSymbol,
            existing_user: T::Boolean,
            ip: String,
            is_trusted_user: T::Boolean,
            ja4_fingerprint: String,
            os_version: String,
            user_agent: String
          }
        )
      end
      def to_hash
      end

      # The type of the user's device.
      module DevicePlatform
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, PreludeSDK::Signals::DevicePlatform) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ANDROID =
          T.let(:android, PreludeSDK::Signals::DevicePlatform::TaggedSymbol)
        IOS = T.let(:ios, PreludeSDK::Signals::DevicePlatform::TaggedSymbol)
        IPADOS =
          T.let(:ipados, PreludeSDK::Signals::DevicePlatform::TaggedSymbol)
        TVOS = T.let(:tvos, PreludeSDK::Signals::DevicePlatform::TaggedSymbol)
        WEB = T.let(:web, PreludeSDK::Signals::DevicePlatform::TaggedSymbol)

        sig do
          override.returns(
            T::Array[PreludeSDK::Signals::DevicePlatform::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
