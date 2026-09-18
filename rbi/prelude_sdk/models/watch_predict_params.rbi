# typed: strong

module PreludeSDK
  module Models
    class WatchPredictParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(PreludeSDK::WatchPredictParams, PreludeSDK::Internal::AnyHash)
        end

      # The signup identifier to score — a phone number or email address.
      sig { returns(PreludeSDK::Target) }
      attr_reader :target

      sig { params(target: PreludeSDK::Target::OrHash).void }
      attr_writer :target

      # The identifier of the dispatch that came from the front-end SDK.
      sig { returns(T.nilable(String)) }
      attr_reader :dispatch_id

      sig { params(dispatch_id: String).void }
      attr_writer :dispatch_id

      # The metadata for this prediction.
      sig { returns(T.nilable(PreludeSDK::WatchPredictParams::Metadata)) }
      attr_reader :metadata

      sig do
        params(metadata: PreludeSDK::WatchPredictParams::Metadata::OrHash).void
      end
      attr_writer :metadata

      # The signals used for anti-fraud. For more details, refer to
      # [Signals](/verify/v2/documentation/prevent-fraud#signals).
      sig { returns(T.nilable(PreludeSDK::Signals)) }
      attr_reader :signals

      sig { params(signals: PreludeSDK::Signals::OrHash).void }
      attr_writer :signals

      sig do
        params(
          target: PreludeSDK::Target::OrHash,
          dispatch_id: String,
          metadata: PreludeSDK::WatchPredictParams::Metadata::OrHash,
          signals: PreludeSDK::Signals::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The signup identifier to score — a phone number or email address.
        target:,
        # The identifier of the dispatch that came from the front-end SDK.
        dispatch_id: nil,
        # The metadata for this prediction.
        metadata: nil,
        # The signals used for anti-fraud. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        signals: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            target: PreludeSDK::Target,
            dispatch_id: String,
            metadata: PreludeSDK::WatchPredictParams::Metadata,
            signals: PreludeSDK::Signals,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Metadata < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::WatchPredictParams::Metadata,
              PreludeSDK::Internal::AnyHash
            )
          end

        # A user-defined identifier to correlate this prediction with. It is returned in
        # the response and any webhook events that refer to this prediction.
        sig { returns(T.nilable(String)) }
        attr_reader :correlation_id

        sig { params(correlation_id: String).void }
        attr_writer :correlation_id

        # The metadata for this prediction.
        sig { params(correlation_id: String).returns(T.attached_class) }
        def self.new(
          # A user-defined identifier to correlate this prediction with. It is returned in
          # the response and any webhook events that refer to this prediction.
          correlation_id: nil
        )
        end

        sig { override.returns({ correlation_id: String }) }
        def to_hash
        end
      end
    end
  end
end
