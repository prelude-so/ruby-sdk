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

      # @!method initialize(request_id:, status:)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchSendFeedbacksResponse} for more details.
      #
      #   @param request_id [String] A string that identifies this specific request. Report it back to us to help us
      #
      #   @param status [Symbol, PreludeSDK::Models::WatchSendFeedbacksResponse::Status] The status of the feedbacks sending.

      # The status of the feedbacks sending.
      #
      # @see PreludeSDK::Models::WatchSendFeedbacksResponse#status
      module Status
        extend PreludeSDK::Internal::Type::Enum

        SUCCESS = :success

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
