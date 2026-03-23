# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#get_subscription_phone_number
    class NotifyGetSubscriptionPhoneNumberParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute config_id
      #
      #   @return [String]
      required :config_id, String

      # @!attribute phone_number
      #
      #   @return [String]
      required :phone_number, String

      # @!method initialize(config_id:, phone_number:, request_options: {})
      #   @param config_id [String]
      #   @param phone_number [String]
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
