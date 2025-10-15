# frozen_string_literal: true

module PreludeSDK
  module Resources
    class VerificationManagement
      # Retrieve sender IDs list.
      #
      # In order to get access to this endpoint, contact our support team.
      #
      # @overload list_sender_ids(request_options: {})
      #
      # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem>]
      #
      # @see PreludeSDK::Models::VerificationManagementListSenderIDsParams
      def list_sender_ids(params = {})
        @client.request(
          method: :get,
          path: "v2/verification/management/sender-id",
          model: PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem],
          options: params[:request_options]
        )
      end

      # This endpoint allows you to add a new sender ID for verification purposes.
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
