# frozen_string_literal: true

require_relative "../test_helper"

class Prelude::Test::Resources::WatchTest < Minitest::Test
  parallelize_me!

  def setup
    @prelude = Prelude::Client.new(
      base_url: ENV.fetch("TEST_API_BASE_URL", "http://localhost:4010"),
      api_token: "My API Token"
    )
  end

  def test_feed_back_required_params
    response = @prelude.watch.feed_back(
      {feedback: {"type" => "CONFIRM_TARGET"}, target: {"type" => "phone_number", "value" => "+30123456789"}}
    )
    assert_kind_of(Prelude::Models::WatchFeedBackResponse, response)
  end

  def test_predict_required_params
    response = @prelude.watch.predict({target: {"type" => "phone_number", "value" => "+30123456789"}})
    assert_kind_of(Prelude::Models::WatchPredictResponse, response)
  end
end
