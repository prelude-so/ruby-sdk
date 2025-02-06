# typed: strong

module PreludeSDK
  module Models
    class WatchFeedBackParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Feedback) }
      attr_accessor :feedback

      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Target) }
      attr_accessor :target

      sig do
        params(
          feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
          target: PreludeSDK::Models::WatchFeedBackParams::Target,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        ).void
      end
      def initialize(feedback:, target:, request_options: {}); end

      sig do
        override.returns(
          {
            feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
            target: PreludeSDK::Models::WatchFeedBackParams::Target,
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash; end

      class Feedback < PreludeSDK::BaseModel
        sig { returns(Symbol) }
        attr_accessor :type

        sig { params(type: Symbol).void }
        def initialize(type:); end

        sig { override.returns({type: Symbol}) }
        def to_hash; end

        class Type < PreludeSDK::Enum
          abstract!

          CONFIRM_TARGET = :CONFIRM_TARGET

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Target < PreludeSDK::BaseModel
        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig { params(type: Symbol, value: String).void }
        def initialize(type:, value:); end

        sig { override.returns({type: Symbol, value: String}) }
        def to_hash; end

        class Type < PreludeSDK::Enum
          abstract!

          PHONE_NUMBER = :phone_number

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end
    end
  end
end
