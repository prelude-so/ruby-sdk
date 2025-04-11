# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#send_feedbacks
    class WatchSendFeedbacksResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute request_id
      #   A string that identifies this specific request. Report it back to us to help us
      #   diagnose your issues.
      #
      #   @return [String]
      required :request_id, String

      # @!attribute status
      #   The status of the feedbacks sending.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::WatchSendFeedbacksResponse::Status }

      # @!parse
      #   # @param request_id [String]
      #   # @param status [Symbol, PreludeSDK::Models::WatchSendFeedbacksResponse::Status]
      #   #
      #   def initialize(request_id:, status:, **) = super

      # def initialize: (Hash | PreludeSDK::Internal::Type::BaseModel) -> void

      # The status of the feedbacks sending.
      #
      # @see PreludeSDK::Models::WatchSendFeedbacksResponse#status
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
