# typed: strong

module PreludeSDK
  module Models
    module Verification
      PhoneVerificationPsd2Transaction = Phone::PhoneVerificationPsd2Transaction

      module Phone
        class PhoneVerificationPsd2Transaction < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Verification::Phone::PhoneVerificationPsd2Transaction,
                PreludeSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(PreludeSDK::Verification::Phone::PhoneVerificationMoney)
            )
          end
          attr_reader :amount

          sig do
            params(
              amount:
                PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash
            ).void
          end
          attr_writer :amount

          # Payee name displayed to the payer.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient

          sig { params(recipient: String).void }
          attr_writer :recipient

          sig do
            params(
              amount:
                PreludeSDK::Verification::Phone::PhoneVerificationMoney::OrHash,
              recipient: String
            ).returns(T.attached_class)
          end
          def self.new(
            amount: nil,
            # Payee name displayed to the payer.
            recipient: nil
          )
          end

          sig do
            override.returns(
              {
                amount: PreludeSDK::Verification::Phone::PhoneVerificationMoney,
                recipient: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
