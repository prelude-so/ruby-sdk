# frozen_string_literal: true

require_relative "../../../test_helper"

class PreludeSDK::Test::Resources::Verification::Phone::HistoryTest < PreludeSDK::Test::ResourceTest
  def test_retrieve
    response = @prelude.verification.phone.history.retrieve("vrf_01jc0t6fwwfgfsq1md24mhyztj")

    assert_pattern do
      response => PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        expires_at: Time,
        phone_number: String,
        status: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Status,
        app_version: String | nil,
        block_reasons: ^(PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::BlockReason]) | nil,
        carrier: PreludeSDK::Verification::Phone::PhoneVerificationCarrier | nil,
        correlation_id: String | nil,
        device_model: String | nil,
        device_platform: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::DevicePlatform | nil,
        ip_address: String | nil,
        ip_address_region: String | nil,
        ip_distance_meters: Integer | nil,
        lifecycle: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Lifecycle | nil,
        phone_number_condition: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCondition | nil,
        phone_number_current_condition: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::PhoneNumberCurrentCondition | nil,
        phone_number_region: String | nil,
        signals: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::Signals | nil,
        signals_hash_status: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse::SignalsHashStatus | nil,
        template_id: String | nil
      }
    end
  end

  def test_list
    response = @prelude.verification.phone.history.list

    assert_pattern do
      response => PreludeSDK::Models::Verification::Phone::HistoryListResponse
    end

    assert_pattern do
      response => {
        verifications: ^(PreludeSDK::Internal::Type::ArrayOf[PreludeSDK::Models::Verification::Phone::HistoryListResponse::Verification]),
        next_cursor: String | nil
      }
    end
  end
end
