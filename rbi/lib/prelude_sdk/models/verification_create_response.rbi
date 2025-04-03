# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::BaseModel
      # The verification identifier.
      sig { returns(String) }
      attr_accessor :id

      # The method used for verifying this phone number.
      sig { returns(PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # The status of the verification.
      sig { returns(PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol) }
      attr_accessor :status

      # The metadata for this verification.
      sig { returns(T.nilable(PreludeSDK::Models::VerificationCreateResponse::Metadata)) }
      attr_reader :metadata

      sig do
        params(
          metadata: T.any(PreludeSDK::Models::VerificationCreateResponse::Metadata, PreludeSDK::Internal::Util::AnyHash)
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
          id: String,
          method_: PreludeSDK::Models::VerificationCreateResponse::Method::OrSymbol,
          status: PreludeSDK::Models::VerificationCreateResponse::Status::OrSymbol,
          metadata: T.any(PreludeSDK::Models::VerificationCreateResponse::Metadata, PreludeSDK::Internal::Util::AnyHash),
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
          T.type_alias { T.any(Symbol, String, PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol) }

        MESSAGE = T.let(:message, PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol)

        sig { override.returns(T::Array[PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol]) }
        def self.values
        end
      end

      # The status of the verification.
      module Status
        extend PreludeSDK::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::VerificationCreateResponse::Status) }
        OrSymbol =
          T.type_alias { T.any(Symbol, String, PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol) }

        SUCCESS = T.let(:success, PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol)
        RETRY = T.let(:retry, PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol)
        BLOCKED = T.let(:blocked, PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol)

        sig { override.returns(T::Array[PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol]) }
        def self.values
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
