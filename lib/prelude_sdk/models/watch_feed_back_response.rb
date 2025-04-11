# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#feed_back
    class WatchFeedBackResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute request_id
      #   A string that identifies this specific request. Report it back to us to help us
      #   diagnose your issues.
      #
      #   @return [String]
      required :request_id, String

      # @!attribute status
      #   The status of the feedbacks sending.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchFeedBackResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::WatchFeedBackResponse::Status }

      # @!parse
      #   # @param request_id [String]
      #   # @param status [Symbol, PreludeSDK::Models::WatchFeedBackResponse::Status]
      #   #
      #   def initialize(request_id:, status:, **) = super

      # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

      # The status of the feedbacks sending.
      #
      # @see PreludeSDK::Models::WatchFeedBackResponse#status
      module Status
        extend PreludeSDK::Internal::Type::Enum

        SUCCESS = :success

        finalize!

        # @!parse
        #   # @return [Array<Symbol>]
        #   def self.values; end
      end
    end
  end
end
