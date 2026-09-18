# typed: strong

module PreludeSDK
  module Models
    module VerificationManagement
      class SandboxListPhoneNumbersParams < PreludeSDK::Internal::Type::BaseModel
        extend PreludeSDK::Internal::Type::RequestParameters::Converter
        include PreludeSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::VerificationManagement::SandboxListPhoneNumbersParams,
              PreludeSDK::Internal::AnyHash
            )
          end

        sig do
          params(request_options: PreludeSDK::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig do
          override.returns({ request_options: PreludeSDK::RequestOptions })
        end
        def to_hash
        end
      end
    end
  end
end
