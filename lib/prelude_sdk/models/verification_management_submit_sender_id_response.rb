# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::VerificationManagement#submit_sender_id
    class VerificationManagementSubmitSenderIDResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute sender_id
      #   The sender ID that was added.
      #
      #   @return [String]
      required :sender_id, String

      # @!attribute status
      #   It indicates the status of the sender ID. Possible values are:
      #
      #   - `approved` - The sender ID is approved.
      #   - `pending` - The sender ID is pending.
      #   - `rejected` - The sender ID is rejected.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status]
      required :status, enum: -> { PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status }

      # @!attribute reason
      #   The reason why the sender ID was rejected.
      #
      #   @return [String, nil]
      optional :reason, String

      # @!method initialize(sender_id:, status:, reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse} for more
      #   details.
      #
      #   @param sender_id [String] The sender ID that was added.
      #
      #   @param status [Symbol, PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status] It indicates the status of the sender ID. Possible values are:
      #
      #   @param reason [String] The reason why the sender ID was rejected.

      # It indicates the status of the sender ID. Possible values are:
      #
      # - `approved` - The sender ID is approved.
      # - `pending` - The sender ID is pending.
      # - `rejected` - The sender ID is rejected.
      #
      # @see PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse#status
      module Status
        extend PreludeSDK::Internal::Type::Enum

        APPROVED = :approved
        PENDING = :pending
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
