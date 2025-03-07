# typed: strong

module PreludeSDK
  module Models
    class WatchFeedBackParams < PreludeSDK::BaseModel
      extend PreludeSDK::RequestParameters::Converter
      include PreludeSDK::RequestParameters

      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Feedback) }
      def feedback
      end

      sig do
        params(_: PreludeSDK::Models::WatchFeedBackParams::Feedback)
          .returns(PreludeSDK::Models::WatchFeedBackParams::Feedback)
      end
      def feedback=(_)
      end

      sig { returns(PreludeSDK::Models::WatchFeedBackParams::Target) }
      def target
      end

      sig do
        params(_: PreludeSDK::Models::WatchFeedBackParams::Target)
          .returns(PreludeSDK::Models::WatchFeedBackParams::Target)
      end
      def target=(_)
      end

      sig do
        params(
          feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
          target: PreludeSDK::Models::WatchFeedBackParams::Target,
          request_options: T.any(PreludeSDK::RequestOptions, T::Hash[Symbol, T.anything])
        )
          .returns(T.attached_class)
      end
      def self.new(feedback:, target:, request_options: {})
      end

      sig do
        override
          .returns(
            {
              feedback: PreludeSDK::Models::WatchFeedBackParams::Feedback,
              target: PreludeSDK::Models::WatchFeedBackParams::Target,
              request_options: PreludeSDK::RequestOptions
            }
          )
      end
      def to_hash
      end

      class Feedback < PreludeSDK::BaseModel
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { params(type: Symbol).returns(T.attached_class) }
        def self.new(type:)
        end

        sig { override.returns({type: Symbol}) }
        def to_hash
        end

        class Type < PreludeSDK::Enum
          abstract!

          CONFIRM_TARGET = :CONFIRM_TARGET

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end

      class Target < PreludeSDK::BaseModel
        sig { returns(Symbol) }
        def type
        end

        sig { params(_: Symbol).returns(Symbol) }
        def type=(_)
        end

        sig { returns(String) }
        def value
        end

        sig { params(_: String).returns(String) }
        def value=(_)
        end

        sig { params(type: Symbol, value: String).returns(T.attached_class) }
        def self.new(type:, value:)
        end

        sig { override.returns({type: Symbol, value: String}) }
        def to_hash
        end

        class Type < PreludeSDK::Enum
          abstract!

          PHONE_NUMBER = :phone_number

          class << self
            sig { override.returns(T::Array[Symbol]) }
            def values
            end
          end
        end
      end
    end
  end
end
