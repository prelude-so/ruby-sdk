# typed: strong

module PreludeSDK
  module Models
    module Intel
      class KYCMatchResponse < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::Intel::KYCMatchResponse,
              PreludeSDK::Internal::AnyHash
            )
          end

        # Whether the street address matched the operator's record.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch::TaggedSymbol
            )
          )
        end
        attr_reader :address_match

        sig do
          params(
            address_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch::OrSymbol
          ).void
        end
        attr_writer :address_match

        # Similarity score (0-99) for the address. Returned only on a non-match.
        sig { returns(T.nilable(Integer)) }
        attr_reader :address_match_score

        sig { params(address_match_score: Integer).void }
        attr_writer :address_match_score

        # Whether the date of birth matched the operator's record. Compared exactly; never
        # scored.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch::TaggedSymbol
            )
          )
        end
        attr_reader :birthdate_match

        sig do
          params(
            birthdate_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch::OrSymbol
          ).void
        end
        attr_writer :birthdate_match

        # The country code of the phone number.
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Whether the country matched the operator's record. Compared exactly; never
        # scored.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch::TaggedSymbol
            )
          )
        end
        attr_reader :country_match

        sig do
          params(
            country_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch::OrSymbol
          ).void
        end
        attr_writer :country_match

        # Whether the email address matched the operator's record.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch::TaggedSymbol
            )
          )
        end
        attr_reader :email_match

        sig do
          params(
            email_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch::OrSymbol
          ).void
        end
        attr_writer :email_match

        # Similarity score (0-99) for the email. Returned only on a non-match.
        sig { returns(T.nilable(Integer)) }
        attr_reader :email_match_score

        sig { params(email_match_score: Integer).void }
        attr_writer :email_match_score

        # Whether the family name matched the operator's record.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch::TaggedSymbol
            )
          )
        end
        attr_reader :family_name_match

        sig do
          params(
            family_name_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch::OrSymbol
          ).void
        end
        attr_writer :family_name_match

        # Similarity score (0-99) for the family name. Returned only on a non-match.
        sig { returns(T.nilable(Integer)) }
        attr_reader :family_name_match_score

        sig { params(family_name_match_score: Integer).void }
        attr_writer :family_name_match_score

        # Whether the given name matched the operator's record.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch::TaggedSymbol
            )
          )
        end
        attr_reader :given_name_match

        sig do
          params(
            given_name_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch::OrSymbol
          ).void
        end
        attr_writer :given_name_match

        # Similarity score (0-99) for the given name. Returned only on a non-match.
        sig { returns(T.nilable(Integer)) }
        attr_reader :given_name_match_score

        sig { params(given_name_match_score: Integer).void }
        attr_writer :given_name_match_score

        # Whether the locality matched the operator's record.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch::TaggedSymbol
            )
          )
        end
        attr_reader :locality_match

        sig do
          params(
            locality_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch::OrSymbol
          ).void
        end
        attr_writer :locality_match

        # Similarity score (0-99) for the locality. Returned only on a non-match.
        sig { returns(T.nilable(Integer)) }
        attr_reader :locality_match_score

        sig { params(locality_match_score: Integer).void }
        attr_writer :locality_match_score

        # The mobile operator that answered the match.
        sig { returns(T.nilable(String)) }
        attr_reader :operator

        sig { params(operator: String).void }
        attr_writer :operator

        # The phone number that was matched, in E.164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Whether the postal code matched the operator's record. Compared exactly; never
        # scored.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch::TaggedSymbol
            )
          )
        end
        attr_reader :postal_code_match

        sig do
          params(
            postal_code_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch::OrSymbol
          ).void
        end
        attr_writer :postal_code_match

        # Whether the region matched the operator's record.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch::TaggedSymbol
            )
          )
        end
        attr_reader :region_match

        sig do
          params(
            region_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch::OrSymbol
          ).void
        end
        attr_writer :region_match

        # Similarity score (0-99) for the region. Returned only on a non-match.
        sig { returns(T.nilable(Integer)) }
        attr_reader :region_match_score

        sig { params(region_match_score: Integer).void }
        attr_writer :region_match_score

        # A string that identifies this specific request. Report it back to us to help us
        # diagnose your issues.
        sig { returns(T.nilable(String)) }
        attr_reader :request_id

        sig { params(request_id: String).void }
        attr_writer :request_id

        # The per-attribute match result. Each `<attribute>_match` field is one of `true`,
        # `false`, or `not_available` (the operator could not answer for that attribute).
        # Fuzzy attributes additionally return a `<attribute>_match_score` (0-99
        # similarity) when they do not match exactly; the score is omitted on a match or
        # when `not_available`.
        sig do
          params(
            address_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch::OrSymbol,
            address_match_score: Integer,
            birthdate_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch::OrSymbol,
            country_code: String,
            country_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch::OrSymbol,
            email_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch::OrSymbol,
            email_match_score: Integer,
            family_name_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch::OrSymbol,
            family_name_match_score: Integer,
            given_name_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch::OrSymbol,
            given_name_match_score: Integer,
            locality_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch::OrSymbol,
            locality_match_score: Integer,
            operator: String,
            phone_number: String,
            postal_code_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch::OrSymbol,
            region_match:
              PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch::OrSymbol,
            region_match_score: Integer,
            request_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the street address matched the operator's record.
          address_match: nil,
          # Similarity score (0-99) for the address. Returned only on a non-match.
          address_match_score: nil,
          # Whether the date of birth matched the operator's record. Compared exactly; never
          # scored.
          birthdate_match: nil,
          # The country code of the phone number.
          country_code: nil,
          # Whether the country matched the operator's record. Compared exactly; never
          # scored.
          country_match: nil,
          # Whether the email address matched the operator's record.
          email_match: nil,
          # Similarity score (0-99) for the email. Returned only on a non-match.
          email_match_score: nil,
          # Whether the family name matched the operator's record.
          family_name_match: nil,
          # Similarity score (0-99) for the family name. Returned only on a non-match.
          family_name_match_score: nil,
          # Whether the given name matched the operator's record.
          given_name_match: nil,
          # Similarity score (0-99) for the given name. Returned only on a non-match.
          given_name_match_score: nil,
          # Whether the locality matched the operator's record.
          locality_match: nil,
          # Similarity score (0-99) for the locality. Returned only on a non-match.
          locality_match_score: nil,
          # The mobile operator that answered the match.
          operator: nil,
          # The phone number that was matched, in E.164 format.
          phone_number: nil,
          # Whether the postal code matched the operator's record. Compared exactly; never
          # scored.
          postal_code_match: nil,
          # Whether the region matched the operator's record.
          region_match: nil,
          # Similarity score (0-99) for the region. Returned only on a non-match.
          region_match_score: nil,
          # A string that identifies this specific request. Report it back to us to help us
          # diagnose your issues.
          request_id: nil
        )
        end

        sig do
          override.returns(
            {
              address_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch::TaggedSymbol,
              address_match_score: Integer,
              birthdate_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch::TaggedSymbol,
              country_code: String,
              country_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch::TaggedSymbol,
              email_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch::TaggedSymbol,
              email_match_score: Integer,
              family_name_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch::TaggedSymbol,
              family_name_match_score: Integer,
              given_name_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch::TaggedSymbol,
              given_name_match_score: Integer,
              locality_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch::TaggedSymbol,
              locality_match_score: Integer,
              operator: String,
              phone_number: String,
              postal_code_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch::TaggedSymbol,
              region_match:
                PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch::TaggedSymbol,
              region_match_score: Integer,
              request_id: String
            }
          )
        end
        def to_hash
        end

        # Whether the street address matched the operator's record.
        module AddressMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::AddressMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the date of birth matched the operator's record. Compared exactly; never
        # scored.
        module BirthdateMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::BirthdateMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the country matched the operator's record. Compared exactly; never
        # scored.
        module CountryMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::CountryMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the email address matched the operator's record.
        module EmailMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::EmailMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the family name matched the operator's record.
        module FamilyNameMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::FamilyNameMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the given name matched the operator's record.
        module GivenNameMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::GivenNameMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the locality matched the operator's record.
        module LocalityMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::LocalityMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the postal code matched the operator's record. Compared exactly; never
        # scored.
        module PostalCodeMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::PostalCodeMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Whether the region matched the operator's record.
        module RegionMatch
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TRUE =
            T.let(
              :true,
              PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch::TaggedSymbol
            )
          FALSE =
            T.let(
              :false,
              PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch::TaggedSymbol
            )
          NOT_AVAILABLE =
            T.let(
              :not_available,
              PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::Intel::KYCMatchResponse::RegionMatch::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
