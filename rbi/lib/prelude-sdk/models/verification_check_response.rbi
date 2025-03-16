# typed: strong

module PreludeSDK
  module Models
    class VerificationCheckResponse < PreludeSDK::BaseModel
      # The status of the check.
      sig { returns(Symbol) }
      def status
      end

      sig { params(_: Symbol).returns(Symbol) }
      def status=(_)
      end

      # The verification identifier.
      sig { returns(T.nilable(String)) }
      def id
      end

      sig { params(_: String).returns(String) }
      def id=(_)
      end

      # The metadata for this verification.
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

      sig do
        params(
          status: Symbol,
          id: String,
          metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
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
              status: Symbol,
              id: String,
              metadata: PreludeSDK::Models::VerificationCheckResponse::Metadata,
              request_id: String
            }
          )
      end
      def to_hash
      end

      # The status of the check.
      class Status < PreludeSDK::Enum
        abstract!

        Value = type_template(:out) { {fixed: Symbol} }

        SUCCESS = :success
        FAILURE = :failure
        EXPIRED_OR_NOT_FOUND = :expired_or_not_found
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
