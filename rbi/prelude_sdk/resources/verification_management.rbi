# typed: strong

module PreludeSDK
  module Resources
    class VerificationManagement
      # Remove a phone number from the allow or block list.
      #
      # This operation is idempotent - re-deleting the same phone number will not result
      # in errors. If the phone number does not exist in the specified list, the
      # operation will succeed without making any changes.
      #
      # In order to get access to this endpoint, contact our support team.
      sig do
        params(
          action:
            PreludeSDK::VerificationManagementDeletePhoneNumberParams::Action::OrSymbol,
          phone_number: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(
          PreludeSDK::Models::VerificationManagementDeletePhoneNumberResponse
        )
      end
      def delete_phone_number(
        # The action type - either "allow" or "block"
        action,
        # An E.164 formatted phone number to remove from the list.
        phone_number:,
        request_options: {}
      )
      end

      # Retrieve the list of phone numbers in the allow or block list.
      #
      # In order to get access to this endpoint, contact our support team.
      sig do
        params(
          action:
            PreludeSDK::VerificationManagementListPhoneNumbersParams::Action::OrSymbol,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(
          PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse
        )
      end
      def list_phone_numbers(
        # The action type - either "allow" or "block"
        action,
        request_options: {}
      )
      end

      # Retrieve sender IDs list.
      #
      # In order to get access to this endpoint, contact our support team.
      sig do
        params(request_options: PreludeSDK::RequestOptions::OrHash).returns(
          PreludeSDK::Models::VerificationManagementListSenderIDsResponse
        )
      end
      def list_sender_ids(request_options: {})
      end

      # Add a phone number to the allow or block list.
      #
      # This operation is idempotent - re-adding the same phone number will not result
      # in duplicate entries or errors. If the phone number already exists in the
      # specified list, the operation will succeed without making any changes.
      #
      # In order to get access to this endpoint, contact our support team.
      sig do
        params(
          action:
            PreludeSDK::VerificationManagementSetPhoneNumberParams::Action::OrSymbol,
          phone_number: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(
          PreludeSDK::Models::VerificationManagementSetPhoneNumberResponse
        )
      end
      def set_phone_number(
        # The action type - either "allow" or "block"
        action,
        # An E.164 formatted phone number to add to the list.
        phone_number:,
        request_options: {}
      )
      end

      # This endpoint allows you to submit a new sender ID for verification purposes.
      #
      # In order to get access to this endpoint, contact our support team.
      sig do
        params(
          sender_id: String,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(
          PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse
        )
      end
      def submit_sender_id(
        # The sender ID to add.
        sender_id:,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
