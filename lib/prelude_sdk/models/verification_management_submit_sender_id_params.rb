# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::VerificationManagement#submit_sender_id
    class VerificationManagementSubmitSenderIDParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute sender_id
      #   The sender ID to add.
      #
      #   @return [String]
      required :sender_id, String

      # @!method initialize(sender_id:, request_options: {})
      #   @param sender_id [String] The sender ID to add.
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
