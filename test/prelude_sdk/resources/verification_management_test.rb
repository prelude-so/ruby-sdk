# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::VerificationManagementTest < PreludeSDK::Test::ResourceTest
  def test_delete_phone_number_required_params
    response = @prelude.verification_management.delete_phone_number(:allow, phone_number: "+30123456789")

    assert_pattern do
      response => PreludeSDK::Models::VerificationManagementDeletePhoneNumberResponse
    end

    assert_pattern do
      response => {
        phone_number: String
      }
    end
  end

  def test_list_phone_numbers
    response = @prelude.verification_management.list_phone_numbers(:allow)

    assert_pattern do
      response => PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse
    end

    assert_pattern do
      response => {
        phone_numbers: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::VerificationManagementListPhoneNumbersResponse::PhoneNumber])
      }
    end
  end

  def test_list_sender_ids
    response = @prelude.verification_management.list_sender_ids

    assert_pattern do
      response => PreludeSDK::Models::VerificationManagementListSenderIDsResponse
    end

    assert_pattern do
      response => {
        sender_ids: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID]) | nil
      }
    end
  end

  def test_set_phone_number_required_params
    response = @prelude.verification_management.set_phone_number(:allow, phone_number: "+30123456789")

    assert_pattern do
      response => PreludeSDK::Models::VerificationManagementSetPhoneNumberResponse
    end

    assert_pattern do
      response => {
        phone_number: String
      }
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
