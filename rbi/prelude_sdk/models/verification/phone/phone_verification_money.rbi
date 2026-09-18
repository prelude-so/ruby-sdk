# typed: strong

module PreludeSDK
  module Models
    module Verification
      PhoneVerificationMoney = Phone::PhoneVerificationMoney

      module Phone
        class PhoneVerificationMoney < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Verification::Phone::PhoneVerificationMoney,
                PreludeSDK::Internal::AnyHash
              )
            end

          # Exact decimal amount. It is never rounded to the currency's minor units, so a
          # sub-cent cost reads as `0.0004` rather than as `0.00`.
          sig { returns(String) }
          attr_accessor :amount

          # ISO 4217 currency code.
          sig { returns(String) }
          attr_accessor :currency

          sig do
            params(amount: String, currency: String).returns(T.attached_class)
          end
          def self.new(
            # Exact decimal amount. It is never rounded to the currency's minor units, so a
            # sub-cent cost reads as `0.0004` rather than as `0.00`.
            amount:,
            # ISO 4217 currency code.
            currency:
          )
          end

          sig { override.returns({ amount: String, currency: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
