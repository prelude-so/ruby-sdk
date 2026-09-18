# typed: strong

module PreludeSDK
  module Models
    module Verification
      module Phone
        class HistoryRetrieveParams < PreludeSDK::Internal::Type::BaseModel
          extend PreludeSDK::Internal::Type::RequestParameters::Converter
          include PreludeSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Verification::Phone::HistoryRetrieveParams,
                PreludeSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            params(
              id: String,
              request_options: PreludeSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, request_options: {})
          end

          sig do
            override.returns(
              { id: String, request_options: PreludeSDK::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
