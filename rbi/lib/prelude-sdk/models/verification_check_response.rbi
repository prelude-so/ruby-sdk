# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckResponse < PreludeSDK::BaseModel
      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCheckResponse::Metadata)) }
      attr_reader :metadata

      sig { params(metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig do
        params(
          status: Symbol,
          id: String,
          metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
          request_id: String
        ).void
      end
      def initialize(status:, id: nil, metadata: nil, request_id: nil); end

      sig do
        override.returns(
          {
            status: Symbol,
            id: String,
            metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
            request_id: String
          }
        )
      end
      def to_hash; end

      class Status < PreludeSDK::Enum
        abstract!

        SUCCESS = :success
        FAILURE = :failure
        EXPIRED_OR_NOT_FOUND = :expired_or_not_found

        sig { override.returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Metadata < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        sig { params(correlation_id: String).void }
        def initialize(correlation_id: nil); end

        sig { override.returns({correlation_id: String}) }
        def to_hash; end
      end
    end
  end
end
