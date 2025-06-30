# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::LookupTest < PreludeSDK::Test::ResourceTest
  def test_lookup
    response = @prelude.lookup.lookup("+12065550100")

    assert_pattern do
      response => PreludeSDK::Models::LookupLookupResponse
    end

    assert_pattern do
      response => {
        caller_name: String | nil,
        country_code: String | nil,
        flags: ^(PreludeSDK::Internal::Type::ArrayOf[enum: PreludeSDK::Models::LookupLookupResponse::Flag]) | nil,
        line_type: PreludeSDK::Models::LookupLookupResponse::LineType | nil,
        network_info: PreludeSDK::Models::LookupLookupResponse::NetworkInfo | nil,
        original_network_info: PreludeSDK::Models::LookupLookupResponse::OriginalNetworkInfo | nil,
        phone_number: String | nil
      }
    end
  end
end
