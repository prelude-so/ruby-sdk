# typed: strong

module PreludeSDK
  module Models
    class WatchEvaluateParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(PreludeSDK::WatchEvaluateParams, PreludeSDK::Internal::AnyHash)
        end

      # The flow to evaluate. A flow names the moment you are guarding and selects the
      # recipes that run.
      sig { returns(String) }
      attr_accessor :flow_id

      # The identifier to score — a phone number or email address.
      sig { returns(PreludeSDK::Target) }
      attr_reader :target

      sig { params(target: PreludeSDK::Target::OrHash).void }
      attr_writer :target

      # Values for the attributes the flow's recipes declare, keyed without the `attr.`
      # namespace a rule uses to reference them.
      #
      # An attribute a recipe declares and this request omits is treated as missing
      # evidence, not as an empty value: the rules reading it report `NOT_EVALUATED`
      # rather than being scored as though the condition were false. A key no recipe in
      # the flow declares is ignored rather than rejected, so one payload can serve
      # flows that read different attributes.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :attributes

      sig { params(attributes: T::Hash[Symbol, String]).void }
      attr_writer :attributes

      # The identifier of the dispatch that came from the front-end SDK. Signals it
      # carries fill in anything the request did not state; the request wins where both
      # supply a value.
      sig { returns(T.nilable(String)) }
      attr_reader :dispatch_id

      sig { params(dispatch_id: String).void }
      attr_writer :dispatch_id

      # The signals used for anti-fraud. For more details, refer to
      # [Signals](/verify/v2/documentation/prevent-fraud#signals).
      sig { returns(T.nilable(PreludeSDK::Signals)) }
      attr_reader :signals

      sig { params(signals: PreludeSDK::Signals::OrHash).void }
      attr_writer :signals

      sig do
        params(
          flow_id: String,
          target: PreludeSDK::Target::OrHash,
          attributes: T::Hash[Symbol, String],
          dispatch_id: String,
          signals: PreludeSDK::Signals::OrHash,
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The flow to evaluate. A flow names the moment you are guarding and selects the
        # recipes that run.
        flow_id:,
        # The identifier to score — a phone number or email address.
        target:,
        # Values for the attributes the flow's recipes declare, keyed without the `attr.`
        # namespace a rule uses to reference them.
        #
        # An attribute a recipe declares and this request omits is treated as missing
        # evidence, not as an empty value: the rules reading it report `NOT_EVALUATED`
        # rather than being scored as though the condition were false. A key no recipe in
        # the flow declares is ignored rather than rejected, so one payload can serve
        # flows that read different attributes.
        attributes: nil,
        # The identifier of the dispatch that came from the front-end SDK. Signals it
        # carries fill in anything the request did not state; the request wins where both
        # supply a value.
        dispatch_id: nil,
        # The signals used for anti-fraud. For more details, refer to
        # [Signals](/verify/v2/documentation/prevent-fraud#signals).
        signals: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            flow_id: String,
            target: PreludeSDK::Target,
            attributes: T::Hash[Symbol, String],
            dispatch_id: String,
            signals: PreludeSDK::Signals,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
