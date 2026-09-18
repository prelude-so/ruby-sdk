# frozen_string_literal: true

module PreludeSDK
  module Models
    # @see PreludeSDK::Resources::Watch#predict
    class WatchPredictParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      # @!attribute target
      #   The signup identifier to score — a phone number or email address.
      #
      #   @return [PreludeSDK::Models::Target]
      required :target, -> { PreludeSDK::Target }

      # @!attribute dispatch_id
      #   The identifier of the dispatch that came from the front-end SDK.
      #
      #   @return [String, nil]
      optional :dispatch_id, String

      # @!attribute metadata
      #   The metadata for this prediction.
      #
      #   @return [PreludeSDK::Models::WatchPredictParams::Metadata, nil]
      optional :metadata, -> { PreludeSDK::WatchPredictParams::Metadata }

      # @!attribute signals
      #   The signals used for anti-fraud. For more details, refer to
      #   [Signals](/verify/v2/documentation/prevent-fraud#signals).
      #
      #   @return [PreludeSDK::Models::Signals, nil]
      optional :signals, -> { PreludeSDK::Signals }

      # @!method initialize(target:, dispatch_id: nil, metadata: nil, signals: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {PreludeSDK::Models::WatchPredictParams} for more details.
      #
      #   @param target [PreludeSDK::Models::Target] The signup identifier to score — a phone number or email address.
      #
      #   @param dispatch_id [String] The identifier of the dispatch that came from the front-end SDK.
      #
      #   @param metadata [PreludeSDK::Models::WatchPredictParams::Metadata] The metadata for this prediction.
      #
      #   @param signals [PreludeSDK::Models::Signals] The signals used for anti-fraud. For more details, refer to [Signals](/verify/v2
      #
      #   @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}]

      class Metadata < PreludeSDK::Internal::Type::BaseModel
        # @!attribute correlation_id
        #   A user-defined identifier to correlate this prediction with. It is returned in
        #   the response and any webhook events that refer to this prediction.
        #
        #   @return [String, nil]
        optional :correlation_id, String

        # @!method initialize(correlation_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {PreludeSDK::Models::WatchPredictParams::Metadata} for more details.
        #
        #   The metadata for this prediction.
        #
        #   @param correlation_id [String] A user-defined identifier to correlate this prediction with. It is returned in t
      end
    end
  end
end
