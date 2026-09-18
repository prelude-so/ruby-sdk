# typed: strong

module PreludeSDK
  module Models
    class WatchSendFeedbacksParams < PreludeSDK::Internal::Type::BaseModel
      extend PreludeSDK::Internal::Type::RequestParameters::Converter
      include PreludeSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::WatchSendFeedbacksParams,
            PreludeSDK::Internal::AnyHash
          )
        end

      # A list of feedbacks to send. A maximum of 100 feedbacks can be sent in a single
      # request.
      sig { returns(T::Array[PreludeSDK::WatchSendFeedbacksParams::Feedback]) }
      attr_accessor :feedbacks

      sig do
        params(
          feedbacks:
            T::Array[PreludeSDK::WatchSendFeedbacksParams::Feedback::OrHash],
          request_options: PreludeSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A list of feedbacks to send. A maximum of 100 feedbacks can be sent in a single
        # request.
        feedbacks:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            feedbacks: T::Array[PreludeSDK::WatchSendFeedbacksParams::Feedback],
            request_options: PreludeSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Feedback < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::WatchSendFeedbacksParams::Feedback,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The feedback target. Only supports phone numbers for now.
        sig { returns(PreludeSDK::Target) }
        attr_reader :target

        sig { params(target: PreludeSDK::Target::OrHash).void }
        attr_writer :target

        # The type of feedback.
        sig do
          returns(
            PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::OrSymbol
          )
        end
        attr_accessor :type

        # The metadata for this feedback.
        sig do
          returns(
            T.nilable(PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata)
          )
        end
        attr_reader :metadata

        sig do
          params(
            metadata:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata::OrHash
          ).void
        end
        attr_writer :metadata

        sig do
          params(
            target: PreludeSDK::Target::OrHash,
            type:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::OrSymbol,
            metadata:
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The feedback target. Only supports phone numbers for now.
          target:,
          # The type of feedback.
          type:,
          # The metadata for this feedback.
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              target: PreludeSDK::Target,
              type:
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::OrSymbol,
              metadata: PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata
            }
          )
        end
        def to_hash
        end

        # The type of feedback.
        module Type
          extend PreludeSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VERIFICATION_STARTED =
            T.let(
              :"verification.started",
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::TaggedSymbol
            )
          VERIFICATION_COMPLETED =
            T.let(
              :"verification.completed",
              PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Metadata < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::WatchSendFeedbacksParams::Feedback::Metadata,
                PreludeSDK::Internal::AnyHash
              )
            end

          # A user-defined identifier to correlate this feedback with. It is returned in the
          # response and any webhook events that refer to this feedback.
          sig { returns(T.nilable(String)) }
          attr_reader :correlation_id

          sig { params(correlation_id: String).void }
          attr_writer :correlation_id

          # The metadata for this feedback.
          sig { params(correlation_id: String).returns(T.attached_class) }
          def self.new(
            # A user-defined identifier to correlate this feedback with. It is returned in the
            # response and any webhook events that refer to this feedback.
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
end
