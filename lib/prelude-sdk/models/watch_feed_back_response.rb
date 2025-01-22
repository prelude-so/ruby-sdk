# frozen_string_literal: true

module PreludeSDK
  module Models
    # @example
    # ```ruby
    # watch_feed_back_response => {
    #   id: String
    # }
    # ```
    class WatchFeedBackResponse < PreludeSDK::BaseModel
      # @!attribute id
      #   A unique identifier for your feedback request.
      #
      #   @return [String]
      required :id, String

      # @!parse
      #   # @param id [String]
      #   #
      #   def initialize(id:, **) = super

      # def initialize: (Hash | PreludeSDK::BaseModel) -> void
    end
  end
end
