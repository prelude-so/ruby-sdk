# typed: strong

module PreludeSDK
  module Models
    class WatchFeedBackParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      Shape = T.type_alias do
        T.all(
          {
            feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
            target: PreludeSDK::Models::WatchFeedBackParams::Target
          },
          PreludeSDK::RequestParameters::Shape
        )
      end

      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Feedback) }
      attr_accessor :feedback

      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Target) }
      attr_accessor :target

      sig do
        params(
          feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
          target: PreludeSDK::Models::WatchFeedBackParams::Target,
          request_options: PreludeSDK::RequestOpts
        ).void
      end
      def initialize(feedback:, target:, request_options: {}); end

      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Shape) }
      def to_h; end

      class Feedback < PreludeSDK::BaseModel
        Shape = T.type_alias { {type: Symbol} }

        sig { returns(Symbol) }
        attr_accessor :type

        sig { params(type: Symbol).void }
        def initialize(type:); end

        sig { returns(PreludeSDK::Models::WatchFeedBackParams::Feedback::Shape) }
        def to_h; end

        class Type < PreludeSDK::Enum
          abstract!

          CONFIRM_TARGET = :CONFIRM_TARGET

          sig { override.returns(T::Array[Symbol]) }
          def self.values; end
        end
      end

      class Target < PreludeSDK::BaseModel
        Shape = T.type_alias { {type: Symbol, value: String} }

        sig { returns(Symbol) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig { params(type: Symbol, value: String).void }
        def initialize(type:, value:); end

        sig { returns(PreludeSDK::Models::WatchFeedBackParams::Target::Shape) }
        def to_h; end

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
