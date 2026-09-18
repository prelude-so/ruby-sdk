# frozen_string_literal: true

module PreludeSDK
  module Models
    module Intel
      # @see PreludeSDK::Resources::Intel::KYC#match
      class KYCMatchResponse < PreludeSDK::Internal::Type::BaseModel
        # @!attribute address_match
        #   Whether the street address matched the operator's record.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch, nil]
        optional :address_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch }

        # @!attribute address_match_score
        #   Similarity score (0-99) for the address. Returned only on a non-match.
        #
        #   @return [Integer, nil]
        optional :address_match_score, Integer

        # @!attribute birthdate_match
        #   Whether the date of birth matched the operator's record. Compared exactly; never
        #   scored.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch, nil]
        optional :birthdate_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch }

        # @!attribute country_code
        #   The country code of the phone number.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute country_match
        #   Whether the country matched the operator's record. Compared exactly; never
        #   scored.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch, nil]
        optional :country_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch }

        # @!attribute email_match
        #   Whether the email address matched the operator's record.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch, nil]
        optional :email_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch }

        # @!attribute email_match_score
        #   Similarity score (0-99) for the email. Returned only on a non-match.
        #
        #   @return [Integer, nil]
        optional :email_match_score, Integer

        # @!attribute family_name_match
        #   Whether the family name matched the operator's record.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch, nil]
        optional :family_name_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch }

        # @!attribute family_name_match_score
        #   Similarity score (0-99) for the family name. Returned only on a non-match.
        #
        #   @return [Integer, nil]
        optional :family_name_match_score, Integer

        # @!attribute given_name_match
        #   Whether the given name matched the operator's record.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch, nil]
        optional :given_name_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch }

        # @!attribute given_name_match_score
        #   Similarity score (0-99) for the given name. Returned only on a non-match.
        #
        #   @return [Integer, nil]
        optional :given_name_match_score, Integer

        # @!attribute locality_match
        #   Whether the locality matched the operator's record.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch, nil]
        optional :locality_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch }

        # @!attribute locality_match_score
        #   Similarity score (0-99) for the locality. Returned only on a non-match.
        #
        #   @return [Integer, nil]
        optional :locality_match_score, Integer

        # @!attribute operator
        #   The mobile operator that answered the match.
        #
        #   @return [String, nil]
        optional :operator, String

        # @!attribute phone_number
        #   The phone number that was matched, in E.164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute postal_code_match
        #   Whether the postal code matched the operator's record. Compared exactly; never
        #   scored.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch, nil]
        optional :postal_code_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch }

        # @!attribute region_match
        #   Whether the region matched the operator's record.
        #
        #   @return [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch, nil]
        optional :region_match, enum: -> { PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch }

        # @!attribute region_match_score
        #   Similarity score (0-99) for the region. Returned only on a non-match.
        #
        #   @return [Integer, nil]
        optional :region_match_score, Integer

        # @!attribute request_id
        #   A string that identifies this specific request. Report it back to us to help us
        #   diagnose your issues.
        #
        #   @return [String, nil]
        optional :request_id, String

        # @!method initialize(address_match: nil, address_match_score: nil, birthdate_match: nil, country_code: nil, country_match: nil, email_match: nil, email_match_score: nil, family_name_match: nil, family_name_match_score: nil, given_name_match: nil, given_name_match_score: nil, locality_match: nil, locality_match_score: nil, operator: nil, phone_number: nil, postal_code_match: nil, region_match: nil, region_match_score: nil, request_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::Intel::KYCMatchResponse} for more details.
        #
        #   The per-attribute match result. Each `<attribute>_match` field is one of `true`,
        #   `false`, or `not_available` (the operator could not answer for that attribute).
        #   Fuzzy attributes additionally return a `<attribute>_match_score` (0-99
        #   similarity) when they do not match exactly; the score is omitted on a match or
        #   when `not_available`.
        #
        #   @param address_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch] Whether the street address matched the operator's record.
        #
        #   @param address_match_score [Integer] Similarity score (0-99) for the address. Returned only on a non-match.
        #
        #   @param birthdate_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch] Whether the date of birth matched the operator's record. Compared exactly; never
        #
        #   @param country_code [String] The country code of the phone number.
        #
        #   @param country_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch] Whether the country matched the operator's record. Compared exactly; never score
        #
        #   @param email_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch] Whether the email address matched the operator's record.
        #
        #   @param email_match_score [Integer] Similarity score (0-99) for the email. Returned only on a non-match.
        #
        #   @param family_name_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch] Whether the family name matched the operator's record.
        #
        #   @param family_name_match_score [Integer] Similarity score (0-99) for the family name. Returned only on a non-match.
        #
        #   @param given_name_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch] Whether the given name matched the operator's record.
        #
        #   @param given_name_match_score [Integer] Similarity score (0-99) for the given name. Returned only on a non-match.
        #
        #   @param locality_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch] Whether the locality matched the operator's record.
        #
        #   @param locality_match_score [Integer] Similarity score (0-99) for the locality. Returned only on a non-match.
        #
        #   @param operator [String] The mobile operator that answered the match.
        #
        #   @param phone_number [String] The phone number that was matched, in E.164 format.
        #
        #   @param postal_code_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch] Whether the postal code matched the operator's record. Compared exactly; never s
        #
        #   @param region_match [Symbol, PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch] Whether the region matched the operator's record.
        #
        #   @param region_match_score [Integer] Similarity score (0-99) for the region. Returned only on a non-match.
        #
        #   @param request_id [String] A string that identifies this specific request. Report it back to us to help us

        # Whether the street address matched the operator's record.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#address_match
        module AddressMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the date of birth matched the operator's record. Compared exactly; never
        # scored.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#birthdate_match
        module BirthdateMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the country matched the operator's record. Compared exactly; never
        # scored.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#country_match
        module CountryMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the email address matched the operator's record.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#email_match
        module EmailMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the family name matched the operator's record.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#family_name_match
        module FamilyNameMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the given name matched the operator's record.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#given_name_match
        module GivenNameMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the locality matched the operator's record.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#locality_match
        module LocalityMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the postal code matched the operator's record. Compared exactly; never
        # scored.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#postal_code_match
        module PostalCodeMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Whether the region matched the operator's record.
        #
        # @see PreludeSDK::Models::Intel::KYCMatchResponse#region_match
        module RegionMatch
          extend PreludeSDK::Internal::Type::Enum

          TRUE = :true
          FALSE = :false
          NOT_AVAILABLE = :not_available

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
