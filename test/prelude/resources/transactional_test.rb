# frozen_string_literal: true

require_relative "../test_helper"

class Prelude::Test::Resources::TransactionalTest < Minitest::Test
  parallelize_me!

  def setup
    @prelude = Prelude::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_token: "My API Token"
    )
  end

  def test_send_required_params
    skip(
      "skipped: currently no good way to test endpoints defining callbacks, Prism mock server will fail trying to reach the provided callback url"
    )
    response = @prelude.transactional.send({template_id: "template_id", to: "to"})
    assert_kind_of(Prelude::Models::TransactionalSendResponse, response)
  end
end
