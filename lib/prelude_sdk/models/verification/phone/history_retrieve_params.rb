# frozen_string_literal: true

module PreludeSDK
  module Models
    module Verification
      module Phone
        # @see PreludeSDK::Resources::Verification::Phone::History#retrieve
        class HistoryRetrieveParams < PreludeSDK::Internal::Type::BaseModel
          extend PreludeSDK::Internal::Type::RequestParameters::Converter
          include PreludeSDK::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!method initialize(id:, request_options: {})
          #   @param id [String]
          #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
