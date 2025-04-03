# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#feed_back
    class WatchFeedBackResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute id
      #   A unique identifier for your feedback request.
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   def initialize(id:, **) = super

      # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void
    end
  end
end
