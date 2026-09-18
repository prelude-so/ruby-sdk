# typed: strong

module PreludeSDK
  module Models
    module Verification
      PhoneVerificationCarrier = Phone::PhoneVerificationCarrier

      module Phone
        class PhoneVerificationCarrier < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Verification::Phone::PhoneVerificationCarrier,
                PreludeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :mccmnc

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # The end user's mobile network.
          sig { params(mccmnc: String, name: String).returns(T.attached_class) }
          def self.new(mccmnc:, name: nil)
          end

          sig { override.returns({ mccmnc: String, name: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
