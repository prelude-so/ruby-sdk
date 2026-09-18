# frozen_string_literal: true

require_relative "../../test_helper"

class PreludeSDK::Test::Resources::Intel::KYCTest < PreludeSDK::Test::ResourceTest
  def test_match
    response = @prelude.intel.kyc.match("+12065550100")

    assert_pattern do
      response => PreludeSDK::Models::Intel::KYCMatchResponse
    end

    assert_pattern do
      response => {
        address_match: PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch | nil,
        address_match_score: Integer | nil,
        birthdate_match: PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch | nil,
        country_code: String | nil,
        country_match: PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch | nil,
        email_match: PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch | nil,
        email_match_score: Integer | nil,
        family_name_match: PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch | nil,
        family_name_match_score: Integer | nil,
        given_name_match: PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch | nil,
        given_name_match_score: Integer | nil,
        locality_match: PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch | nil,
        locality_match_score: Integer | nil,
        operator: String | nil,
        phone_number: String | nil,
        postal_code_match: PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch | nil,
        region_match: PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch | nil,
        region_match_score: Integer | nil,
        request_id: String | nil
      }
    end
  end
end
