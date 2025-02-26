# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::BaseModel
      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateResponse::Metadata)) }
      def metadata
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCreateResponse::Metadata)
          .returns(PreludeSDK::Models::VerificationCreateResponse::Metadata)
      end
      def metadata=(_)
      end

      sig { returns(T.nilable(Symbol)) }
      def method_
      end

      sig { params(_: Symbol).returns(Symbol) }
      def method_=(_)
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
          metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
          method_: Symbol,
          request_id: String,
          status: Symbol
        )
          .void
      end
      def initialize(id: nil, metadata: nil, method_: nil, request_id: nil, status: nil)
      end

      sig do
        override
          .returns(
            {
              id: String,
              metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
              method_: Symbol,
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
    end
  end
end
