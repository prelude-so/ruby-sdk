# frozen_string_literal: true

require_relative "../test_helper"

class PreludeSDK::Test::Resources::TransactionalTest < PreludeSDK::Test::ResourceTest
  def test_send__required_params
    skip("Prism doesn't support callbacks yet")

    response =
      @prelude.transactional.send_(template_id: "template_01jd1xq0cffycayqtdkdbv4d61", to: "+30123456789")

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
        variables: ^(PreludeSDK::Internal::Type::HashOf[String]),
        callback_url: String | nil,
        correlation_id: String | nil,
        from: String | nil
      }
    end
  end
end
