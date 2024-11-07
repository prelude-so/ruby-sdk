# frozen_string_literal: true

require_relative "../test_helper"

class Prelude::Test::Resources::VerificationTest < Minitest::Test
  parallelize_me!

  def setup
    @prelude = Prelude::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_token: "My API Token"
    )
  end

  def test_create_required_params
    response = @prelude.verification.create({target: {"type" => "phone_number", "value" => "+30123456789"}})
    assert_kind_of(Prelude::Models::VerificationCreateResponse, response)
  end

  def test_check_required_params
    response = @prelude.verification.check({target: {"type" => "phone_number", "value" => "+30123456789"}})
    assert_kind_of(Prelude::Models::VerificationCheckResponse, response)
  end
end
