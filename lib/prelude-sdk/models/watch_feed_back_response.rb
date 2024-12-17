# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchFeedBackResponse < PreludeSDK::BaseModel
      # @!attribute id
      #   A unique identifier for your feedback request.
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String] A unique identifier for your feedback request.
      #   #
      #   def initialize(id:) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void
    end
  end
end
