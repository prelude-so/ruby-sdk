# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::BaseModel
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Symbol) }
      attr_accessor :method_

      sig { returns(Symbol) }
      attr_accessor :status

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateResponse::Metadata)) }
      attr_reader :metadata

      sig { params(metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata).void }
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig do
        params(
          id: String,
          method_: Symbol,
          status: Symbol,
          metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
          request_id: String
        ).void
      end
      def initialize(id:, method_:, status:, metadata: nil, request_id: nil)
      end

      sig do
        override.returns(
          {
            id: String,
            method_: Symbol,
            status: Symbol,
            metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
            request_id: String
          }
        )
      end
      def to_hash
      end

      class Method < PreludeSDK::Enum
        abstract!

        MESSAGE = :message

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Status < PreludeSDK::Enum
        abstract!

        SUCCESS = :success
        RETRY = :retry
        BLOCKED = :blocked

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end

      class Metadata < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        sig { params(correlation_id: String).void }
        def initialize(correlation_id: nil)
        end

        sig { override.returns({correlation_id: String}) }
        def to_hash
        end
      end
    end
  end
end
