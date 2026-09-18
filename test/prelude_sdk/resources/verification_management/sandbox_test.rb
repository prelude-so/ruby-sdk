# frozen_string_literal: true

require_relative "../../test_helper"

class PreludeSDK::Test::Resources::VerificationManagement::SandboxTest < PreludeSDK::Test::ResourceTest
  def test_add_phone_number_required_params
    response =
      @prelude.verification_management.sandbox.add_phone_number(
        attempt_code: "123456",
        phone_number: "+30123456789"
      )

    assert_pattern do
      response => PreludeSDK::Models::VerificationManagement::SandboxAddPhoneNumberResponse
    end

    assert_pattern do
      response => {
        attempt_code: String,
        phone_number: String
      }
    end
  end

  def test_delete_phone_number
    response = @prelude.verification_management.sandbox.delete_phone_number("+12065550100")

    assert_pattern do
      response => PreludeSDK::Models::VerificationManagement::SandboxDeletePhoneNumberResponse
    end

    assert_pattern do
      response => {
        phone_number: String
      }
    end
  end

  def test_list_phone_numbers
    response = @prelude.verification_management.sandbox.list_phone_numbers

    assert_pattern do
      response => PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse
    end

    assert_pattern do
      response => {
        phone_numbers: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse::PhoneNumber])
      }
    end
  end
end
