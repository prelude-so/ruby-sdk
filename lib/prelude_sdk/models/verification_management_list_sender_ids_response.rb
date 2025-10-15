# frozen_string_literal: true

module PreludeSDK
  module Models
    class VerificationManagementListSenderIDsResponseItem < PreludeSDK::Internal::Type::BaseModel
      # @!attribute status
      #   It indicates the status of the sender ID. Possible values are:
      #
      #   - `approved` - The sender ID is approved.
      #   - `pending` - The sender ID is pending.
      #   - `rejected` - The sender ID is rejected.
      #
      #   @return [Symbol, PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status, nil]
      optional :status, enum: -> { PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status }

      # @!attribute value
      #   Value that will be presented as Sender ID
      #
      #   @return [String, nil]
      optional :value, String

      # @!method initialize(status: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem} for more
      #   details.
      #
      #   @param status [Symbol, PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem::Status] It indicates the status of the sender ID. Possible values are:
      #
      #   @param value [String] Value that will be presented as Sender ID

      # It indicates the status of the sender ID. Possible values are:
      #
      # - `approved` - The sender ID is approved.
      # - `pending` - The sender ID is pending.
      # - `rejected` - The sender ID is rejected.
      #
      # @see PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem#status
      module Status
        extend PreludeSDK::Internal::Type::Enum

        APPROVED = :approved
        PENDING = :pending
        REJECTED = :rejected

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end

    # @type [PreludeSDK::Internal::Type::Converter]
    VerificationManagementListSenderIDsResponse =
      PreludeSDK::Internal::Type::ArrayOf[-> { PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem }]
  end
end
