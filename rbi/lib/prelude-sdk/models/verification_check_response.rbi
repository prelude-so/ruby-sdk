# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckResponse < PreludeSDK::BaseModel
      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCheckResponse::Metadata)) }
      def metadata
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCheckResponse::Metadata)
          .returns(PreludeSDK::Models::VerificationCheckResponse::Metadata)
      end
      def metadata=(_)
      end

      sig { returns(T.nilable(String)) }
      def request_id
      end

      sig { params(_: String).returns(String) }
      def request_id=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      sig do
        params(
          id: String,
          metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
          request_id: String,
          status: Symbol
        )
          .void
      end
      def initialize(id: nil, metadata: nil, request_id: nil, status: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
              request_id: String,
              status: Symbol
            }
          )
      end
      def to_hash
      end

      class Metadata < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        def correlation_id
        end

        sig { params(_: String).returns(String) }
        def correlation_id=(_)
        end

        sig { params(correlation_id: String).void }
        def initialize(correlation_id: nil)
        end

        sig { override.returns({correlation_id: String}) }
        def to_hash
        end
      end

      class Status < PreludeSDK::Enum
        abstract!

        SUCCESS = :success
        FAILURE = :failure
        EXPIRED = :expired

        sig { override.returns(T::Array[Symbol]) }
        def self.values
        end
      end
    end
  end
end
