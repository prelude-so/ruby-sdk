# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#send_feedbacks
    class WatchSendFeedbacksParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute feedbacks
      #   A list of feedbacks to send. A maximum of 100 feedbacks can be sent in a single
      #   request.
      #
      #   @return [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>]
      required :feedbacks,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::WatchSendFeedbacksParams::Feedback] }

      # @!method initialize(feedbacks:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchSendFeedbacksParams} for more details.
      #
      #   @param feedbacks [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>] A list of feedbacks to send. A maximum of 100 feedbacks can be sent in a single
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Feedback < PreludeSDK::Internal::Type::BaseModel
        # @!attribute target
        #   The feedback target. Only supports phone numbers for now.
        #
        #   @return [PreludeSDK::Models::Target]
        required :target, -> { PreludeSDK::Target }

        # @!attribute type
        #   The type of feedback.
        #
        #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Type]
        required :type, enum: -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Type }

        # @!attribute metadata
        #   The metadata for this feedback.
        #
        #   @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata, nil]
        optional :metadata, -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata }

        # @!method initialize(target:, type:, metadata: nil)
        #   @param target [PreludeSDK::Models::Target] The feedback target. Only supports phone numbers for now.
        #
        #   @param type [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Type] The type of feedback.
        #
        #   @param metadata [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata] The metadata for this feedback.

        # The type of feedback.
        #
        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#type
        module Type
          extend PreludeSDK::Internal::Type::Enum

          VERIFICATION_STARTED = :"verification.started"
          VERIFICATION_COMPLETED = :"verification.completed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#metadata
        class Metadata < PreludeSDK::Internal::Type::BaseModel
          # @!attribute correlation_id
          #   A user-defined identifier to correlate this feedback with. It is returned in the
          #   response and any webhook events that refer to this feedback.
          #
          #   @return [String, nil]
          optional :correlation_id, String

          # @!method initialize(correlation_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata} for more
          #   details.
          #
          #   The metadata for this feedback.
          #
          #   @param correlation_id [String] A user-defined identifier to correlate this feedback with. It is returned in the
        end
      end
    end
  end
end
