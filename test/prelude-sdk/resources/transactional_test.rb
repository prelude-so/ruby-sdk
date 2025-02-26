# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::TransactionalTest < Minitest::Test
  def before_all
    @prelude = PreludeSDK::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_token: "My API Token"
    )
  end

  def test_send__required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )

    response = @prelude.transactional.send_(
      template_id: "template_01jd1xq0cffycayqtdkdbv4d61",
      to: "+30123456789"
    )

    assert_pattern do
      response => PreludeSDK::Models::TransactionalSendResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        expires_at: Time,
        template_id: String,
        to: String,
        variables: ^(PreludeSDK::HashOf[String]),
        callback_url: String | nil,
        correlation_id: String | nil,
        from: String | nil
      }
    end
  end
end
