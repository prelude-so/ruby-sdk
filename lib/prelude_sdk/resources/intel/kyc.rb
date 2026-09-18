# frozen_string_literal: true

module PreludeSDK
  module Resources
    class Intel
      # Retrieve detailed information about a phone number including carrier data, line
      # type, and portability status.
      class KYC
        # Verify identity attributes against the subscriber record held by the end-user's
        # mobile operator. Send a phone number along with the attributes to check; Prelude
        # resolves the operator internally and returns a per-attribute match. Currently
        # available for France only (Orange, SFR, Bouygues) and must be enabled for your
        # account.
        #
        # @overload match(phone, address: nil, birthdate: nil, country: nil, email: nil, family_name: nil, given_name: nil, locality: nil, postal_code: nil, region: nil, request_options: {})
        #
        # @param phone [String] An E.164 formatted phone number whose subscriber identity to match against.
        #
        # @param address [String] The street address.
        #
        # @param birthdate [Date] The date of birth in ISO 8601 (`YYYY-MM-DD`) format. Compared exactly.
        #
        # @param country [String] The ISO 3166-1 alpha-2 country code. Compared exactly.
        #
        # @param email [String] The email address.
        #
        # @param family_name [String] The end-user's family (last) name.
        #
        # @param given_name [String] The end-user's given (first) name.
        #
        # @param locality [String] The locality (city).
        #
        # @param postal_code [String] The postal code. Compared exactly.
        #
        # @param region [String] The region, state, or province.
        #
        # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [PreludeSDK::Models::Intel::KYCMatchResponse]
        #
        # @see PreludeSDK::Models::Intel::KYCMatchParams
        def match(phone, params = {})
          parsed, options = PreludeSDK::Intel::KYCMatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v2/intel/kyc/match/%1$s", phone],
            body: parsed,
            model: PreludeSDK::Models::Intel::KYCMatchResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [PreludeSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
