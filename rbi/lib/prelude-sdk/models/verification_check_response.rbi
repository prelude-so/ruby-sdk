# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckResponse < PreludeSDK::BaseModel
      # The status of the check.
      sig { returns(PreludeSDK::Models::VerificationCheckResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # The verification identifier.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The metadata for this verification.
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCheckResponse::Metadata)) }
      attr_reader :metadata

      sig do
        params(
          metadata: T.any(PreludeSDK::Models::VerificationCheckResponse::Metadata, PreludeSDK::Util::AnyHash)
        )
          .void
      end
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig do
        params(
          status: PreludeSDK::Models::VerificationCheckResponse::Status::OrSymbol,
          id: String,
          metadata: T.any(PreludeSDK::Models::VerificationCheckResponse::Metadata, PreludeSDK::Util::AnyHash),
          request_id: String
        )
          .returns(T.attached_class)
      end
      def self.new(status:, id: nil, metadata: nil, request_id: nil)
      end

      sig do
        override
          .returns(
            {
              status: PreludeSDK::Models::VerificationCheckResponse::Status::TaggedSymbol,
              id: String,
              metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
              request_id: String
            }
          )
      end
      def to_hash
      end

      # The status of the check.
      module Status
        extend PreludeSDK::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::VerificationCheckResponse::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, PreludeSDK::Models::VerificationCheckResponse::Status::TaggedSymbol) }

        SUCCESS = T.let(:success, PreludeSDK::Models::VerificationCheckResponse::Status::TaggedSymbol)
        FAILURE = T.let(:failure, PreludeSDK::Models::VerificationCheckResponse::Status::TaggedSymbol)
        EXPIRED_OR_NOT_FOUND =
          T.let(:expired_or_not_found, PreludeSDK::Models::VerificationCheckResponse::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[PreludeSDK::Models::VerificationCheckResponse::Status::TaggedSymbol]) }
          def values
          end
        end
      end

      class Metadata < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        # The metadata for this verification.
        sig { params(correlation_id: String).returns(T.attached_class) }
        def self.new(correlation_id: nil)
        end

        sig { override.returns({correlation_id: String}) }
        def to_hash
        end
      end
    end
  end
end
