# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#send_feedbacks
    class WatchSendFeedbacksParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute feedbacks
      #   A list of feedbacks to send.
      #
      #   @return [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>]
      required :feedbacks,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::WatchSendFeedbacksParams::Feedback] }

      # @!method initialize(feedbacks:, request_options: {})
      #   @param feedbacks [Array<PreludeSDK::Models::WatchSendFeedbacksParams::Feedback>] A list of feedbacks to send.
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Feedback < PreludeSDK::Internal::Type::BaseModel
        # @!attribute target
        #   The feedback target. Only supports phone numbers for now.
        #
        #   @return [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target]
        required :target, -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Target }

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
        #   @param target [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target] The feedback target. Only supports phone numbers for now.
        #
        #   @param type [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Type] The type of feedback.
        #
        #   @param metadata [PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Metadata] The metadata for this feedback.

        # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback#target
        class Target < PreludeSDK::Internal::Type::BaseModel
          # @!attribute type
          #   The type of the target. Either "phone_number" or "email_address".
          #
          #   @return [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target::Type]
          required :type, enum: -> { PreludeSDK::WatchSendFeedbacksParams::Feedback::Target::Type }

          # @!attribute value
          #   An E.164 formatted phone number or an email address.
          #
          #   @return [String]
          required :value, String

          # @!method initialize(type:, value:)
          #   The feedback target. Only supports phone numbers for now.
          #
          #   @param type [Symbol, PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target::Type] The type of the target. Either "phone_number" or "email_address".
          #
          #   @param value [String] An E.164 formatted phone number or an email address.

          # The type of the target. Either "phone_number" or "email_address".
          #
          # @see PreludeSDK::Models::WatchSendFeedbacksParams::Feedback::Target#type
          module Type
            extend PreludeSDK::Internal::Type::Enum

            PHONE_NUMBER = :phone_number
            EMAIL_ADDRESS = :email_address

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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
