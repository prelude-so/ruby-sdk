# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::BaseModel
      # The verification identifier.
      sig { returns(String) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The method used for verifying this phone number.
      sig { returns(Symbol) }
      def method_
      end

      sig { params(_: Symbol).returns(Symbol) }
      def method_=(_)
      end

      # The status of the verification.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The metadata for this verification.
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
          .returns(T.attached_class)
      end
      def self.new(id:, method_:, status:, metadata: nil, request_id: nil)
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

      # The method used for verifying this phone number.
      class Method < PreludeSDK::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        MESSAGE = :message
      end

      # The status of the verification.
      class Status < PreludeSDK::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        SUCCESS = :success
        RETRY = :retry
        BLOCKED = :blocked
      end

      class Metadata < PreludeSDK::BaseModel
        sig { returns(T.nilable(String)) }
        def correlation_id
        end

        sig { params(_: String).returns(String) }
        def correlation_id=(_)
        end

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
