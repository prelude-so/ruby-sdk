# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::VerificationManagementTest < PreludeSDK::Test::ResourceTest
  def test_list_sender_ids
    response = @prelude.verification_management.list_sender_ids

    assert_pattern do
      response => ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::VerificationManagementListSenderIDsResponseItem])
    end
  end

  def test_submit_sender_id_required_params
    response = @prelude.verification_management.submit_sender_id(sender_id: "Prelude")

    assert_pattern do
      response => PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse
    end

    assert_pattern do
      response => {
        sender_id: String,
        status: PreludeSDK::Models::VerificationManagementSubmitSenderIDResponse::Status,
        reason: String | nil
      }
    end
  end
end
