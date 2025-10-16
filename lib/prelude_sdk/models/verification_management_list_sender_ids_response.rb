# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::VerificationManagement#list_sender_ids
    class VerificationManagementListSenderIDsResponse < PreludeSDK::Internal::Type::BaseModel
      # @!attribute sender_ids
      #
      #   @return [Array<PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID>, nil]
      optional :sender_ids,
               -> { PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID] }

      # @!method initialize(sender_ids: nil)
      #   A list of Sender ID.
      #
      #   @param sender_ids [Array<PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID>]

      class SenderID < PreludeSDK::Internal::Type::BaseModel
        # @!attribute sender_id
        #   Value that will be presented as Sender ID
        #
        #   @return [String, nil]
        optional :sender_id, String

        # @!attribute status
        #   It indicates the status of the Sender ID. Possible values are:
        #
        #   - `approved` - The Sender ID is approved.
        #   - `pending` - The Sender ID is pending.
        #   - `rejected` - The Sender ID is rejected.
        #
        #   @return [Symbol, PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status, nil]
        optional :status,
                 enum: -> { PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status }

        # @!method initialize(sender_id: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID} for
        #   more details.
        #
        #   @param sender_id [String] Value that will be presented as Sender ID
        #
        #   @param status [Symbol, PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status] It indicates the status of the Sender ID. Possible values are:

        # It indicates the status of the Sender ID. Possible values are:
        #
        # - `approved` - The Sender ID is approved.
        # - `pending` - The Sender ID is pending.
        # - `rejected` - The Sender ID is rejected.
        #
        # @see PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID#status
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
end
