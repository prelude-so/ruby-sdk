# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::BaseModel
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      sig { returns(Symbol) }
      def method_
      end

      sig { params(_: Symbol).returns(Symbol) }
      def method_=(_)
      end

      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
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

      sig { returns(T.nilable(String)) }
      def request_id
      end

      sig { params(_: String).returns(String) }
      def request_id=(_)
      end

      sig do
        params(
          id: String,
          method_: Symbol,
          status: Symbol,
          metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
          request_id: String
        )
          .void
      end
      def initialize(id:, method_:, status:, metadata: nil, request_id: nil)
      end

      sig do
        override
          .returns(
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

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
      end

      class Status < PreludeSDK::Enum
        abstract!

        SUCCESS = :success
        RETRY = :retry
        BLOCKED = :blocked

        class << self
          sig { override.returns(T::Array[Symbol]) }
          def values
          end
        end
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
    end
  end
end
