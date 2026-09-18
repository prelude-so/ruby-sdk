# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#evaluate
    class WatchEvaluateParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute flow_id
      #   The flow to evaluate. A flow names the moment you are guarding and selects the
      #   recipes that run.
      #
      #   @return [String]
      required :flow_id, String

      # @!attribute target
      #   The identifier to score — a phone number or email address.
      #
      #   @return [PreludeSDK::Models::Target]
      required :target, -> { PreludeSDK::Target }

      # @!attribute attributes
      #   Values for the attributes the flow's recipes declare, keyed without the `attr.`
      #   namespace a rule uses to reference them.
      #
      #   An attribute a recipe declares and this request omits is treated as missing
      #   evidence, not as an empty value: the rules reading it report `NOT_EVALUATED`
      #   rather than being scored as though the condition were false. A key no recipe in
      #   the flow declares is ignored rather than rejected, so one payload can serve
      #   flows that read different attributes.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :attributes, PreludeSDK::Internal::Type::HashOf[String]

      # @!attribute dispatch_id
      #   The identifier of the dispatch that came from the front-end SDK. Signals it
      #   carries fill in anything the request did not state; the request wins where both
      #   supply a value.
      #
      #   @return [String, nil]
      optional :dispatch_id, String

      # @!attribute signals
      #   The signals used for anti-fraud. For more details, refer to
      #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
      #
      #   @return [PreludeSDK::Models::Signals, nil]
      optional :signals, -> { PreludeSDK::Signals }

      # @!method initialize(flow_id:, target:, attributes: nil, dispatch_id: nil, signals: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchEvaluateParams} for more details.
      #
      #   @param flow_id [String] The flow to evaluate. A flow names the moment you are guarding and selects the r
      #
      #   @param target [PreludeSDK::Models::Target] The identifier to score — a phone number or email address.
      #
      #   @param attributes [Hash{Symbol=>String}] Values for the attributes the flow's recipes declare, keyed without the `attr.`
      #
      #   @param dispatch_id [String] The identifier of the dispatch that came from the front-end SDK. Signals it carr
      #
      #   @param signals [PreludeSDK::Models::Signals] The signals used for anti-fraud. For more details, refer to [Signals](/verify/v2
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
