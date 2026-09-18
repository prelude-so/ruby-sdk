# frozen_string_literal: true

module PreludeSDK
  module Models
    module Verification
      module Phone
        class PhoneVerificationMoney < PreludeSDK::Internal::Type::BaseModel
          # @!attribute amount
          #   Exact decimal amount. It is never rounded to the currency's minor units, so a
          #   sub-cent cost reads as `0.0004` rather than as `0.00`.
          #
          #   @return [String]
          required :amount, String

          # @!attribute currency
          #   ISO 4217 currency code.
          #
          #   @return [String]
          required :currency, String

          # @!method initialize(amount:, currency:)
          #   Some parameter documentations has been truncated, see
          #   {PreludeSDK::Models::Verification::Phone::PhoneVerificationMoney} for more
          #   details.
          #
          #   @param amount [String] Exact decimal amount. It is never rounded to the currency's minor units, so a su
          #
          #   @param currency [String] ISO 4217 currency code.
        end
      end

      PhoneVerificationMoney = Phone::PhoneVerificationMoney
    end
  end
end
