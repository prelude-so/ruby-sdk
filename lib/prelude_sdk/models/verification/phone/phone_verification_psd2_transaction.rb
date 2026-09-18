# frozen_string_literal: true

module PreludeSDK
  module Models
    module Verification
      module Phone
        class PhoneVerificationPsd2Transaction < PreludeSDK::Internal::Type::BaseModel
          # @!attribute amount
          #
          #   @return [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney, nil]
          optional :amount, -> { PreludeSDK::Verification::Phone::PhoneVerificationMoney }

          # @!attribute recipient
          #   Payee name displayed to the payer.
          #
          #   @return [String, nil]
          optional :recipient, String

          # @!method initialize(amount: nil, recipient: nil)
          #   @param amount [PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney]
          #
          #   @param recipient [String] Payee name displayed to the payer.
        end
      end

      PhoneVerificationPsd2Transaction = Phone::PhoneVerificationPsd2Transaction
    end
  end
end
