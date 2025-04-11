# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::WatchTest < PreludeSDK::Test::ResourceTest
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

  def test_send_events_required_params
    response =
      @prelude.watch.send_events(
        events: [
          {
            confidence: :maximum,
            label: "onboarding.start",
            target: {type: :phone_number, value: "+30123456789"}
          }
        ]
      )

    assert_pattern do
      response => PreludeSDK::Models::WatchSendEventsResponse
    end

    assert_pattern do
      response => {
        request_id: String,
        status: PreludeSDK::Models::WatchSendEventsResponse::Status
      }
    end
  end

  def test_send_feedbacks_required_params
    response =
      @prelude.watch.send_feedbacks(
        feedbacks: [{target: {type: :phone_number, value: "+30123456789"}, type: :"verification.started"}]
      )

    assert_pattern do
      response => PreludeSDK::Models::WatchSendFeedbacksResponse
    end

    assert_pattern do
      response => {
        request_id: String,
        status: PreludeSDK::Models::WatchSendFeedbacksResponse::Status
      }
    end
  end
end
