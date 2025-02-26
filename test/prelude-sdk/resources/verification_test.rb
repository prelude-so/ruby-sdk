# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::VerificationTest < Minitest::Test
  def before_all
    @prelude = PreludeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_token: "My API Token"
    )
  end

  def test_create_required_params
    response = @prelude.verification.create(target: {type: :phone_number, value: "+30123456789"})

    assert_pattern do
      response => PreludeSDK::Models::VerificationCreateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata | nil,
        method_: PreludeSDK::Models::VerificationCreateResponse::Method | nil,
        request_id: String | nil,
        status: PreludeSDK::Models::VerificationCreateResponse::Status | nil
      }
    end
  end

  def test_check_required_params
    response = @prelude.verification.check(
      code: "12345",
      target: {
        type: :phone_number, value: "+30123456789"
      }
    )

    assert_pattern do
      response => PreludeSDK::Models::VerificationCheckResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata | nil,
        request_id: String | nil,
        status: PreludeSDK::Models::VerificationCheckResponse::Status | nil
      }
    end
  end
end
