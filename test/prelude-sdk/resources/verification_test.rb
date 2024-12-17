# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::VerificationTest < Minitest::Test
  def setup
    @prelude = PreludeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_token: "My API Token"
    )
  end

  def test_create_required_params
    response = @prelude.verification.create(target: {"type" => "phone_number", "value" => "+30123456789"})
    assert_kind_of(PreludeSDK::Models::VerificationCreateResponse, response)
  end

  def test_check_required_params
    response = @prelude.verification.check(
      code: "12345",
      target: {
        "type" => "phone_number", "value" => "+30123456789"
      }
    )
    assert_kind_of(PreludeSDK::Models::VerificationCheckResponse, response)
  end
end
