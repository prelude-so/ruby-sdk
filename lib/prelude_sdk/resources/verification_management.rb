# frozen_string_literal: true

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
      #
      # @overload delete_phone_number(action, phone_number:, request_options: {})
      #
      # @param action [Symbol, PreludeSDK::Models::VerificationManagementDeletePhoneNumberParams::Action] The action type - either "allow" or "block"
      #
      # @param phone_number [String] An E.164 formatted phone number to remove from the list.
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationManagementDeletePhoneNumberResponse]
      #
      # @see PreludeSDK::Models::VerificationManagementDeletePhoneNumberParams
      def delete_phone_number(action, params)
        parsed, options = PreludeSDK::VerificationManagementDeletePhoneNumberParams.dump_request(params)
        @client.request(
          method: :delete,
          path: ["v2/verification/management/phone-numbers/%1$s", action],
          body: parsed,
          model: PreludeSDK::Models::VerificationManagementDeletePhoneNumberResponse,
          options: options
        )
      end

      # Retrieve the list of phone numbers in the allow or block list.
      #
      # In order to get access to this endpoint, contact our support team.
      #
      # @overload list_phone_numbers(action, request_options: {})
      #
      # @param action [Symbol, PreludeSDK::Models::VerificationManagementListPhoneNumbersParams::Action] The action type - either "allow" or "block"
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse]
      #
      # @see PreludeSDK::Models::VerificationManagementListPhoneNumbersParams
      def list_phone_numbers(action, params = {})
        @client.request(
          method: :get,
          path: ["v2/verification/management/phone-numbers/%1$s", action],
          model: PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse,
          options: params[:request_options]
        )
      end

      # Retrieve sender IDs list.
      #
      # In order to get access to this endpoint, contact our support team.
      #
      # @overload list_sender_ids(request_options: {})
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationManagementListSenderIDsResponse]
      #
      # @see PreludeSDK::Models::VerificationManagementListSenderIDsParams
      def list_sender_ids(params = {})
        @client.request(
          method: :get,
          path: "v2/verification/management/sender-id",
          model: PreludeSDK::Models::VerificationManagementListSenderIDsResponse,
          options: params[:request_options]
        )
      end

      # Add a phone number to the allow or block list.
      #
      # This operation is idempotent - re-adding the same phone number will not result
      # in duplicate entries or errors. If the phone number already exists in the
      # specified list, the operation will succeed without making any changes.
      #
      # In order to get access to this endpoint, contact our support team.
      #
      # @overload set_phone_number(action, phone_number:, request_options: {})
      #
      # @param action [Symbol, PreludeSDK::Models::VerificationManagementSetPhoneNumberParams::Action] The action type - either "allow" or "block"
      #
      # @param phone_number [String] An E.164 formatted phone number to add to the list.
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationManagementSetPhoneNumberResponse]
      #
      # @see PreludeSDK::Models::VerificationManagementSetPhoneNumberParams
      def set_phone_number(action, params)
        parsed, options = PreludeSDK::VerificationManagementSetPhoneNumberParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["v2/verification/management/phone-numbers/%1$s", action],
          body: parsed,
          model: PreludeSDK::Models::VerificationManagementSetPhoneNumberResponse,
          options: options
        )
      end

      # This endpoint allows you to submit a new sender ID for verification purposes.
      #
      # In order to get access to this endpoint, contact our support team.
      #
      # @overload submit_sender_id(sender_id:, request_options: {})
      #
      # @param sender_id [String] The sender ID to add.
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse]
      #
      # @see PreludeSDK::Models::VerificationManagementSubmitSenderIDParams
      def submit_sender_id(params)
        parsed, options = PreludeSDK::VerificationManagementSubmitSenderIDParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/verification/management/sender-id",
          body: parsed,
          model: PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [PreludeSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
