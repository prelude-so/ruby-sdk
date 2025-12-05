# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#get_subscription_config
    class NotifyGetSubscriptionConfigParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
