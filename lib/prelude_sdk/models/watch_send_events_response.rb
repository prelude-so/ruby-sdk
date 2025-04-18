# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#send_events
    class WatchSendEventsResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute request_id
      #   A string that identifies this specific request. Report it back to us to help us
      #   diagnose your issues.
      #
      #   @return [String]
      required :request_id, String

      # @!attribute status
      #   The status of the events dispatch.
      #
      #   @return [Symbol, PreludeSDK::Models::WatchSendEventsResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::WatchSendEventsResponse::Status }

      # @!method initialize(request_id:, status:)
      #   @param request_id [String]
      #   @param status [Symbol, PreludeSDK::Models::WatchSendEventsResponse::Status]

      # The status of the events dispatch.
      #
      # @see PreludeSDK::Models::WatchSendEventsResponse#status
      module Status
        extend PreludeSDK::Internal::Type::Enum

        SUCCESS = :success

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
