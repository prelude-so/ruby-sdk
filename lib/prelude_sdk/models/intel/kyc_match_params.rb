# frozen_string_literal: true

module PreludeSDK
  module Models
    module Intel
      # @see PreludeSDK::Resources::Intel::KYC#match
      class KYCMatchParams < PreludeSDK::Internal::Type::BaseModel
        extend PreludeSDK::Internal::Type::RequestParameters::Converter
        include PreludeSDK::Internal::Type::RequestParameters

        # @!attribute phone
        #   An E.164 formatted phone number whose subscriber identity to match against.
        #
        #   @return [String]
        required :phone, String

        # @!attribute address
        #   The street address.
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute birthdate
        #   The date of birth in ISO 8601 (`YYYY-MM-DD`) format. Compared exactly.
        #
        #   @return [Date, nil]
        optional :birthdate, Date

        # @!attribute country
        #   The ISO 3166-1 alpha-2 country code. Compared exactly.
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute email
        #   The email address.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute family_name
        #   The end-user's family (last) name.
        #
        #   @return [String, nil]
        optional :family_name, String

        # @!attribute given_name
        #   The end-user's given (first) name.
        #
        #   @return [String, nil]
        optional :given_name, String

        # @!attribute locality
        #   The locality (city).
        #
        #   @return [String, nil]
        optional :locality, String

        # @!attribute postal_code
        #   The postal code. Compared exactly.
        #
        #   @return [String, nil]
        optional :postal_code, String

        # @!attribute region
        #   The region, state, or province.
        #
        #   @return [String, nil]
        optional :region, String

        # @!method initialize(phone:, address: nil, birthdate: nil, country: nil, email: nil, family_name: nil, given_name: nil, locality: nil, postal_code: nil, region: nil, request_options: {})
        #   @param phone [String] An E.164 formatted phone number whose subscriber identity to match against.
        #
        #   @param address [String] The street address.
        #
        #   @param birthdate [Date] The date of birth in ISO 8601 (`YYYY-MM-DD`) format. Compared exactly.
        #
        #   @param country [String] The ISO 3166-1 alpha-2 country code. Compared exactly.
        #
        #   @param email [String] The email address.
        #
        #   @param family_name [String] The end-user's family (last) name.
        #
        #   @param given_name [String] The end-user's given (first) name.
        #
        #   @param locality [String] The locality (city).
        #
        #   @param postal_code [String] The postal code. Compared exactly.
        #
        #   @param region [String] The region, state, or province.
        #
        #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
