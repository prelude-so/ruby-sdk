# typed: strong

module PreludeSDK
  module Resources
    class VerificationManagement
      # Retrieve sender IDs list.
      #
      # In order to get access to this endpoint, contact our support team.
      sig do
        params(request_options: PreludeSDK::RequestOptions::OrHash).returns(
          T::Array[
            PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem
          ]
        )
      end
      def list_sender_ids(request_options: {})
      end

      # This endpoint allows you to add a new sender ID for verification purposes.
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
