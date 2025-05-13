# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::VerificationTest < PreludeSDK::Test::ResourceTest
  def test_create_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @prelude.verification.create(target: {type: :phone_number, value: "+30123456789"})

    assert_pattern do
      response => PreludeSDK::Models::VerificationCreateResponse
    end

    assert_pattern do
      response => {
        id: String,
        method_: PreludeSDK::Models::VerificationCreateResponse::Method,
        status: PreludeSDK::Models::VerificationCreateResponse::Status,
        channels: ^(PreludeSDK::Internal::Type::ArrayOf[String]) | nil,
        metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata | nil,
        request_id: String | nil
      }
    end
  end

  def test_check_required_params
    response =
      @prelude.verification.check(code: "12345", target: {type: :phone_number, value: "+30123456789"})

    assert_pattern do
      response => PreludeSDK::Models::VerificationCheckResponse
    end

    assert_pattern do
      response => {
        status: PreludeSDK::Models::VerificationCheckResponse::Status,
        id: String | nil,
        metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata | nil,
        request_id: String | nil
      }
    end
  end
end
