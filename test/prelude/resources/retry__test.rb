# frozen_string_literal: true

require_relative "../test_helper"

class Prelude::Test::Resources::RetryTest < Minitest::Test
  parallelize_me!

  def setup
    @prelude = Prelude::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_key: "My API Key",
      customer_uuid: "My Customer Uuid"
    )
  end

  def test_create_required_params
    response = @prelude.retry_.create(
      {
        authentication_uuid: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        customer_uuid: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"
      }
    )
    assert_kind_of(Prelude::Models::RetryCreateResponse, response)
  end
end
