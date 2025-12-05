# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#list_subscription_configs
    class NotifyListSubscriptionConfigsParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute cursor
      #   Pagination cursor from the previous response
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #   Maximum number of configurations to return per page
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!method initialize(cursor: nil, limit: nil, request_options: {})
      #   @param cursor [String] Pagination cursor from the previous response
      #
      #   @param limit [Integer] Maximum number of configurations to return per page
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
