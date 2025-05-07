# typed: strong

module PreludeSDK
  module Models
    class WatchSendEventsResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(T.self_type, PreludeSDK::Internal::AnyHash) }

      # A string that identifies this specific request. Report it back to us to help us
      # diagnose your issues.
      sig { returns(String) }
      attr_accessor :request_id

      # The status of the events dispatch.
      sig do
        returns(
          PreludeSDK::Models::WatchSendEventsResponse::Status::TaggedSymbol
        )
      end
      attr_accessor :status

      sig do
        params(
          request_id: String,
          status: PreludeSDK::Models::WatchSendEventsResponse::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # A string that identifies this specific request. Report it back to us to help us
        # diagnose your issues.
        request_id:,
        # The status of the events dispatch.
        status:
      )
      end

      sig do
        override.returns(
          {
            request_id: String,
            status:
              PreludeSDK::Models::WatchSendEventsResponse::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The status of the events dispatch.
      module Status
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, PreludeSDK::Models::WatchSendEventsResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCESS =
          T.let(
            :success,
            PreludeSDK::Models::WatchSendEventsResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              PreludeSDK::Models::WatchSendEventsResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
