# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::NotifyTest < PreludeSDK::Test::ResourceTest
  def test_get_subscription_config
    response = @prelude.notify.get_subscription_config("config_id")

    assert_pattern do
      response => PreludeSDK::Models::NotifyGetSubscriptionConfigResponse
    end

    assert_pattern do
      response => {
        id: String,
        callback_url: String,
        created_at: Time,
        messages: PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::Messages,
        name: String,
        updated_at: Time,
        mo_phone_numbers: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifyGetSubscriptionConfigResponse::MoPhoneNumber]) | nil
      }
    end
  end

  def test_get_subscription_phone_number_required_params
    response = @prelude.notify.get_subscription_phone_number("phone_number", config_id: "config_id")

    assert_pattern do
      response => PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse
    end

    assert_pattern do
      response => {
        config_id: String,
        phone_number: String,
        source: PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::Source,
        state: PreludeSDK::Models::NotifyGetSubscriptionPhoneNumberResponse::State,
        updated_at: Time,
        reason: String | nil
      }
    end
  end

  def test_list_subscription_configs
    response = @prelude.notify.list_subscription_configs

    assert_pattern do
      response => PreludeSDK::Models::NotifyListSubscriptionConfigsResponse
    end

    assert_pattern do
      response => {
        configs: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifyListSubscriptionConfigsResponse::Config]),
        next_cursor: String | nil
      }
    end
  end

  def test_list_subscription_phone_number_events_required_params
    response = @prelude.notify.list_subscription_phone_number_events("phone_number", config_id: "config_id")

    assert_pattern do
      response => PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse
    end

    assert_pattern do
      response => {
        events: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifyListSubscriptionPhoneNumberEventsResponse::Event]),
        next_cursor: String | nil
      }
    end
  end

  def test_list_subscription_phone_numbers
    response = @prelude.notify.list_subscription_phone_numbers("config_id")

    assert_pattern do
      response => PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse
    end

    assert_pattern do
      response => {
        phone_numbers: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifyListSubscriptionPhoneNumbersResponse::PhoneNumber]),
        next_cursor: String | nil
      }
    end
  end

  def test_send__required_params
    skip("Prism doesn't support callbacks yet")

    response = @prelude.notify.send_(template_id: "template_01k8ap1btqf5r9fq2c8ax5fhc9", to: "+33612345678")

    assert_pattern do
      response => PreludeSDK::Models::NotifySendResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        expires_at: Time,
        template_id: String,
        to: String,
        variables: ^(PreludeSDK::Internal::Type::HashOf[String]),
        callback_url: String | nil,
        correlation_id: String | nil,
        from: String | nil,
        schedule_at: Time | nil
      }
    end
  end

  def test_send_batch_required_params
    response =
      @prelude.notify.send_batch(
        template_id: "template_01k8ap1btqf5r9fq2c8ax5fhc9",
        to: ["+33612345678", "+15551234567"]
      )

    assert_pattern do
      response => PreludeSDK::Models::NotifySendBatchResponse
    end

    assert_pattern do
      response => {
        error_count: Integer,
        results: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::NotifySendBatchResponse::Result]),
        success_count: Integer,
        total_count: Integer,
        callback_url: String | nil,
        request_id: String | nil,
        template_id: String | nil,
        variables: ^(PreludeSDK::Internal::Type::HashOf[String]) | nil
      }
    end
  end
end
