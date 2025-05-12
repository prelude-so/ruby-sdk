# typed: strong

module PreludeSDK
  module Models
    class VerificationCreateResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::VerificationCreateResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # The verification identifier.
      sig { returns(String) }
      attr_accessor :id

      # The method used for verifying this phone number.
      sig do
        returns(
          PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
        )
      end
      attr_accessor :method_

      # The status of the verification.
      sig do
        returns(
          PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      # The metadata for this verification.
      sig do
        returns(
          T.nilable(PreludeSDK::Models::VerificationCreateResponse::Metadata)
        )
      end
      attr_reader :metadata

      sig do
        params(
          metadata:
            PreludeSDK::Models::VerificationCreateResponse::Metadata::OrHash
        ).void
      end
      attr_writer :metadata

      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      sig do
        params(
          id: String,
          method_:
            PreludeSDK::Models::VerificationCreateResponse::Method::OrSymbol,
          status:
            PreludeSDK::Models::VerificationCreateResponse::Status::OrSymbol,
          metadata:
            PreludeSDK::Models::VerificationCreateResponse::Metadata::OrHash,
          request_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The verification identifier.
        id:,
        # The method used for verifying this phone number.
        method_:,
        # The status of the verification.
        status:,
        # The metadata for this verification.
        metadata: nil,
        request_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            method_:
              PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol,
            status:
              PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol,
            metadata: PreludeSDK::Models::VerificationCreateResponse::Metadata,
            request_id: String
          }
        )
      end
      def to_hash
      end

      # The method used for verifying this phone number.
      module Method
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::VerificationCreateResponse::Method
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MESSAGE =
          T.let(
            :message,
            PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Method::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # The status of the verification.
      module Status
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              PreludeSDK::Models::VerificationCreateResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCESS =
          T.let(
            :success,
            PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        RETRY =
          T.let(
            :retry,
            PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )
        BLOCKED =
          T.let(
            :blocked,
            PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::VerificationCreateResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Metadata < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::VerificationCreateResponse::Metadata,
              PreludeSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        # The metadata for this verification.
        sig { params(correlation_id: String).returns(T.attached_class) }
        def self.new(correlation_id: nil)
        end

        sig { override.returns({ correlation_id: String }) }
        def to_hash
        end
      end
    end
  end
end
