# typed: strong

module PreludeSDK
  module Models
    class VerificationManagementListSenderIDsResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::VerificationManagementListSenderIDsResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID
            ]
          )
        )
      end
      attr_reader :sender_ids

      sig do
        params(
          sender_ids:
            T::Array[
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::OrHash
            ]
        ).void
      end
      attr_writer :sender_ids

      # A list of Sender ID.
      sig do
        params(
          sender_ids:
            T::Array[
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(sender_ids: nil)
      end

      sig do
        override.returns(
          {
            sender_ids:
              T::Array[
                PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID
              ]
          }
        )
      end
      def to_hash
      end

      class SenderID < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID,
              PreludeSDK::Internal::AnyHash
            )
          end

        # Value that will be presented as Sender ID
        sig { returns(T.nilable(String)) }
        attr_reader :sender_id

        sig { params(sender_id: String).void }
        attr_writer :sender_id

        # It indicates the status of the Sender ID. Possible values are:
        #
        # - `approved` - The Sender ID is approved.
        # - `pending` - The Sender ID is pending.
        # - `rejected` - The Sender ID is rejected.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            sender_id: String,
            status:
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Value that will be presented as Sender ID
          sender_id: nil,
          # It indicates the status of the Sender ID. Possible values are:
          #
          # - `approved` - The Sender ID is approved.
          # - `pending` - The Sender ID is pending.
          # - `rejected` - The Sender ID is rejected.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              sender_id: String,
              status:
                PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # It indicates the status of the Sender ID. Possible values are:
        #
        # - `approved` - The Sender ID is approved.
        # - `pending` - The Sender ID is pending.
        # - `rejected` - The Sender ID is rejected.
        module Status
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          APPROVED =
            T.let(
              :approved,
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::Models::VerificationManagementListSenderIDsResponse::SenderID::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
