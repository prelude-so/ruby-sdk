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
      sig { returns(PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol) }
      def method_
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol)
          .returns(PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol)
      end
      def method_=(_)
      end

      # The status of the verification.
      sig { returns(PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol) }
      def status
      end

      sig do
        params(_: PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol)
          .returns(PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol)
      end
      def status=(_)
      end

      # The metadata for this verification.
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateResponse::Metadata)) }
      def metadata
      end

      sig do
        params(_: T.any(PreludeSDK::Models::VerificationCreateResponse::Metadata, PreludeSDK::Util::AnyHash))
          .returns(T.any(PreludeSDK::Models::VerificationCreateResponse::Metadata, PreludeSDK::Util::AnyHash))
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
          method_: PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol,
          status: PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol,
          metadata: T.any(PreludeSDK::Models::VerificationCreateResponse::Metadata, PreludeSDK::Util::AnyHash),
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
              method_: PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol,
              status: PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol,
              metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
              request_id: String
            }
          )
      end
      def to_hash
      end

      # The method used for verifying this phone number.
      module Method
        extend PreludeSDK::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::VerificationCreateResponse::Method) }
        OrSymbol =
          T.type_alias { T.any(Symbol, PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol) }

        MESSAGE = T.let(:message, PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol]) }
          def values
          end
        end
      end

      # The status of the verification.
      module Status
        extend PreludeSDK::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::VerificationCreateResponse::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol) }

        SUCCESS = T.let(:success, PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol)
        RETRY = T.let(:retry, PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol)
        BLOCKED = T.let(:blocked, PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol)

        class << self
          sig { override.returns(T::Array[PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol]) }
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
