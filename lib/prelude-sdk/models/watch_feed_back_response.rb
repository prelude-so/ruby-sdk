# frozen_string_literal: true

module PreludeSDK
  module Models
    class WatchFeedBackResponse < PreludeSDK::BaseModel
      # @!attribute [r] id
      #   A unique identifier for your feedback request.
      #
      #   @return [String, nil]
      optional :id, String

      # @!parse
      #   # @return [String]
      #   attr_writer :id

      # @!parse
      #   # @param id [String]
      #   #
      #   def initialize(id: nil, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void
    end
  end
end
