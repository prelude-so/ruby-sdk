# typed: strong

module PreludeSDK
  module Models
    class NotifyGetSubscriptionPhoneNumberParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::NotifyGetSubscriptionPhoneNumberParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :config_id

      sig do
        params(
          config_id: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(config_id:, request_options: {})
      end

      sig do
        override.returns(
          { config_id: String, request_options: PreludeSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
