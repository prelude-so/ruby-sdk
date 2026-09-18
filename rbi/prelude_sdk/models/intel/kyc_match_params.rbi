# typed: strong

module PreludeSDK
  module Models
    module Intel
      class KYCMatchParams < PreludeSDK::Internal::Type::BaseModel
        extend PreludeSDK::Internal::Type::RequestParameters::Converter
        include PreludeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Intel::KYCMatchParams,
              PreludeSDK::Internal::AnyHash
            )
          end

        # An E.164 formatted phone number whose subscriber identity to match against.
        sig { returns(String) }
        attr_accessor :phone

        # The street address.
        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        # The date of birth in ISO 8601 (`YYYY-MM-DD`) format. Compared exactly.
        sig { returns(T.nilable(Date)) }
        attr_reader :birthdate

        sig { params(birthdate: Date).void }
        attr_writer :birthdate

        # The ISO 3166-1 alpha-2 country code. Compared exactly.
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # The email address.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # The end-user's family (last) name.
        sig { returns(T.nilable(String)) }
        attr_reader :family_name

        sig { params(family_name: String).void }
        attr_writer :family_name

        # The end-user's given (first) name.
        sig { returns(T.nilable(String)) }
        attr_reader :given_name

        sig { params(given_name: String).void }
        attr_writer :given_name

        # The locality (city).
        sig { returns(T.nilable(String)) }
        attr_reader :locality

        sig { params(locality: String).void }
        attr_writer :locality

        # The postal code. Compared exactly.
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { params(postal_code: String).void }
        attr_writer :postal_code

        # The region, state, or province.
        sig { returns(T.nilable(String)) }
        attr_reader :region

        sig { params(region: String).void }
        attr_writer :region

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
          ).returns(T.attached_class)
        end
        def self.new(
          # An E.164 formatted phone number whose subscriber identity to match against.
          phone:,
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

        sig do
          override.returns(
            {
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
              request_options: PreludeSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
