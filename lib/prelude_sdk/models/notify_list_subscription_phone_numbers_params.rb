# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#list_subscription_phone_numbers
    class NotifyListSubscriptionPhoneNumbersParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute cursor
      #   Pagination cursor from the previous response
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #   Maximum number of phone numbers to return per page
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute state
      #   Filter by subscription state
      #
      #   @return [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersParams::State, nil]
      optional :state, enum: -> { PreludeSDK::NotifyListSubscriptionPhoneNumbersParams::State }

      # @!method initialize(cursor: nil, limit: nil, state: nil, request_options: {})
      #   @param cursor [String] Pagination cursor from the previous response
      #
      #   @param limit [Integer] Maximum number of phone numbers to return per page
      #
      #   @param state [Symbol, PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersParams::State] Filter by subscription state
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      # Filter by subscription state
      module State
        extend PreludeSDK::Internal::Type::Enum

        SUB = :SUB
        UNSUB = :UNSUB

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
