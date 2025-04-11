# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::WatchTest < PreludeSDK::Test::ResourceTest
  def test_feed_back_required_params
    response =
      @prelude.watch.feed_back(
        feedbacks: [{target: {type: :phone_number, value: "+30123456789"}, type: :"verification.started"}]
      )

    assert_pattern do
      response => PreludeSDK::Models::WatchFeedBackResponse
    end

    assert_pattern do
      response => {
        request_id: String,
        status: PreludeSDK::Models::WatchFeedBackResponse::Status
      }
    end
  end

  def test_predict_required_params
    response = @prelude.watch.predict(target: {type: :phone_number, value: "+30123456789"})

    assert_pattern do
      response => PreludeSDK::Models::WatchPredictResponse
    end

    assert_pattern do
      response => {
        id: String,
        prediction: PreludeSDK::Models::WatchPredictResponse::Prediction,
        request_id: String
      }
    end
  end
end
