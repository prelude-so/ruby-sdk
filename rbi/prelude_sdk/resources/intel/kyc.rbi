# typed: strong

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
        sig do
          params(
            phone: String,
            address: String,
            birthdate: Date,
            country: String,
            email: String,
            family_name: String,
            given_name: String,
            locality: String,
            postal_code: String,
            region: String,
            request_options: PreludeSDK::RequestOptions::OrHash
          ).returns(PreludeSDK::Models::Intel::KYCMatchResponse)
        end
        def match(
          # An E.164 formatted phone number whose subscriber identity to match against.
          phone,
          # The street address.
          address: nil,
          # The date of birth in ISO 8601 (`YYYY-MM-DD`) format. Compared exactly.
          birthdate: nil,
          # The ISO 3166-1 alpha-2 country code. Compared exactly.
          country: nil,
          # The email address.
          email: nil,
          # The end-user's family (last) name.
          family_name: nil,
          # The end-user's given (first) name.
          given_name: nil,
          # The locality (city).
          locality: nil,
          # The postal code. Compared exactly.
          postal_code: nil,
          # The region, state, or province.
          region: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
