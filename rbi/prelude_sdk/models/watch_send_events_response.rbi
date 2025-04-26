# typed: strong

module PreludeSDK
  module Models
    class WatchSendEventsResponse < PreludeSDK::Internal::Type::BaseModel
      # A string that identifies this specific request. Report it back to us to help us
      # diagnose your issues.
      sig { returns(String) }
      attr_accessor :request_id

      # The status of the events dispatch.
      sig { returns(PreludeSDK::Models::WatchSendEventsResponse::Status::TaggedSymbol) }
      attr_accessor :status

      sig do
        params(request_id: String, status: PreludeSDK::Models::WatchSendEventsResponse::Status::OrSymbol)
          .returns(T.attached_class)
      end
      def self.new(
        # A string that identifies this specific request. Report it back to us to help us
        # diagnose your issues.
        request_id:,
        # The status of the events dispatch.
        status:
      ); end
      sig do
        override
          .returns({request_id: String, status: PreludeSDK::Models::WatchSendEventsResponse::Status::TaggedSymbol})
      end
      def to_hash; end

      # The status of the events dispatch.
      module Status
        extend PreludeSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, PreludeSDK::Models::WatchSendEventsResponse::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SUCCESS = T.let(:success, PreludeSDK::Models::WatchSendEventsResponse::Status::TaggedSymbol)

        sig { override.returns(T::Array[PreludeSDK::Models::WatchSendEventsResponse::Status::TaggedSymbol]) }
        def self.values; end
      end
    end
  end
end
