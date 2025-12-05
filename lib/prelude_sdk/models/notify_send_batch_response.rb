# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Notify#send_batch
    class NotifySendBatchResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute error_count
      #   Number of failed sends.
      #
      #   @return [Integer]
      required :error_count, Integer

      # @!attribute results
      #   The per-recipient result of the bulk send.
      #
      #   @return [Array<PreludeSDK::Models::NotifySendBatchResponse::Result>]
      required :results,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifySendBatchResponse::Result] }

      # @!attribute success_count
      #   Number of successful sends.
      #
      #   @return [Integer]
      required :success_count, Integer

      # @!attribute total_count
      #   Total number of recipients.
      #
      #   @return [Integer]
      required :total_count, Integer

      # @!attribute callback_url
      #   The callback URL used for this bulk request, if any.
      #
      #   @return [String, nil]
      optional :callback_url, String

      # @!attribute request_id
      #   A string that identifies this specific request.
      #
      #   @return [String, nil]
      optional :request_id, String

      # @!attribute template_id
      #   The template identifier used for this bulk request.
      #
      #   @return [String, nil]
      optional :template_id, String

      # @!attribute variables
      #   The variables used for this bulk request.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :variables, PreludeSDK::Internal::Type::HashOf[String]

      # @!method initialize(error_count:, results:, success_count:, total_count:, callback_url: nil, request_id: nil, template_id: nil, variables: nil)
      #   @param error_count [Integer] Number of failed sends.
      #
      #   @param results [Array<PreludeSDK::Models::NotifySendBatchResponse::Result>] The per-recipient result of the bulk send.
      #
      #   @param success_count [Integer] Number of successful sends.
      #
      #   @param total_count [Integer] Total number of recipients.
      #
      #   @param callback_url [String] The callback URL used for this bulk request, if any.
      #
      #   @param request_id [String] A string that identifies this specific request.
      #
      #   @param template_id [String] The template identifier used for this bulk request.
      #
      #   @param variables [Hash{Symbol=>String}] The variables used for this bulk request.

      class Result < PreludeSDK::Internal::Type::BaseModel
        # @!attribute phone_number
        #   The recipient's phone number in E.164 format.
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute success
        #   Whether the message was accepted for delivery.
        #
        #   @return [Boolean]
        required :success, PreludeSDK::Internal::Type::Boolean

        # @!attribute error
        #   Present only if success is false.
        #
        #   @return [PreludeSDK::Models::NotifySendBatchResponse::Result::Error, nil]
        optional :error, -> { PreludeSDK::Models::NotifySendBatchResponse::Result::Error }

        # @!attribute message
        #   Present only if success is true.
        #
        #   @return [PreludeSDK::Models::NotifySendBatchResponse::Result::Message, nil]
        optional :message, -> { PreludeSDK::Models::NotifySendBatchResponse::Result::Message }

        # @!method initialize(phone_number:, success:, error: nil, message: nil)
        #   @param phone_number [String] The recipient's phone number in E.164 format.
        #
        #   @param success [Boolean] Whether the message was accepted for delivery.
        #
        #   @param error [PreludeSDK::Models::NotifySendBatchResponse::Result::Error] Present only if success is false.
        #
        #   @param message [PreludeSDK::Models::NotifySendBatchResponse::Result::Message] Present only if success is true.

        # @see PreludeSDK::Models::NotifySendBatchResponse::Result#error
        class Error < PreludeSDK::Internal::Type::BaseModel
          # @!attribute code
          #   The error code.
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute message
          #   A human-readable error message.
          #
          #   @return [String, nil]
          optional :message, String

          # @!method initialize(code: nil, message: nil)
          #   Present only if success is false.
          #
          #   @param code [String] The error code.
          #
          #   @param message [String] A human-readable error message.
        end

        # @see PreludeSDK::Models::NotifySendBatchResponse::Result#message
        class Message < PreludeSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The message identifier.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute correlation_id
          #   The correlation identifier for the message.
          #
          #   @return [String, nil]
          optional :correlation_id, String

          # @!attribute created_at
          #   The message creation date in RFC3339 format.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute expires_at
          #   The message expiration date in RFC3339 format.
          #
          #   @return [Time, nil]
          optional :expires_at, Time

          # @!attribute from
          #   The Sender ID used for this message.
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute locale
          #   The locale used for the message, if any.
          #
          #   @return [String, nil]
          optional :locale, String

          # @!attribute schedule_at
          #   When the message will actually be sent in RFC3339 format with timezone offset.
          #
          #   @return [Time, nil]
          optional :schedule_at, Time

          # @!attribute to
          #   The recipient's phone number in E.164 format.
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(id: nil, correlation_id: nil, created_at: nil, expires_at: nil, from: nil, locale: nil, schedule_at: nil, to: nil)
          #   Present only if success is true.
          #
          #   @param id [String] The message identifier.
          #
          #   @param correlation_id [String] The correlation identifier for the message.
          #
          #   @param created_at [Time] The message creation date in RFC3339 format.
          #
          #   @param expires_at [Time] The message expiration date in RFC3339 format.
          #
          #   @param from [String] The Sender ID used for this message.
          #
          #   @param locale [String] The locale used for the message, if any.
          #
          #   @param schedule_at [Time] When the message will actually be sent in RFC3339 format with timezone offset.
          #
          #   @param to [String] The recipient's phone number in E.164 format.
        end
      end
    end
  end
end
