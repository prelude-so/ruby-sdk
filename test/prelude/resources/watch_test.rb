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

  def test_feedback_required_params
    response = @prelude.watch.feedback({target: {"type" => "phone_number", "value" => "+30123456789"}})
    assert_kind_of(Prelude::Models::WatchFeedbackResponse, response)
  end

  def test_predict_required_params
    response = @prelude.watch.predict({target: {"type" => "phone_number", "value" => "+30123456789"}})
    assert_kind_of(Prelude::Models::WatchPredictResponse, response)
  end
end
