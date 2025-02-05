# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckResponse < PreludeSDK::BaseModel
      Shape = T.type_alias do
        {
          status: Symbol,
          id: String,
          metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
          request_id: String
        }
      end

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

      sig { returns(PreludeSDK::Models::VerificationCheckResponse::Shape) }
      def to_h; end

      class Status < PreludeSDK::Enum
        abstract!

        SUCCESS = :success
        FAILURE = :failure
        EXPIRED_OR_NOT_FOUND = :expired_or_not_found

        sig { returns(T::Array[Symbol]) }
        def self.values; end
      end

      class Metadata < PreludeSDK::BaseModel
        Shape = T.type_alias { {correlation_id: String} }

        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        sig { params(correlation_id: String).void }
        def initialize(correlation_id: nil); end

        sig { returns(PreludeSDK::Models::VerificationCheckResponse::Metadata::Shape) }
        def to_h; end
      end
    end
  end
end
