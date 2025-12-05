# typed: strong

module PreludeSDK
  module Models
    class NotifySendBatchResponse < PreludeSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            PreludeSDK::Models::NotifySendBatchResponse,
            PreludeSDK::Internal::AnyHash
          )
        end

      # Number of failed sends.
      sig { returns(Integer) }
      attr_accessor :error_count

      # The per-recipient result of the bulk send.
      sig do
        returns(T::Array[PreludeSDK::Models::NotifySendBatchResponse::Result])
      end
      attr_accessor :results

      # Number of successful sends.
      sig { returns(Integer) }
      attr_accessor :success_count

      # Total number of recipients.
      sig { returns(Integer) }
      attr_accessor :total_count

      # The callback URL used for this bulk request, if any.
      sig { returns(T.nilable(String)) }
      attr_reader :callback_url

      sig { params(callback_url: String).void }
      attr_writer :callback_url

      # A string that identifies this specific request.
      sig { returns(T.nilable(String)) }
      attr_reader :request_id

      sig { params(request_id: String).void }
      attr_writer :request_id

      # The template identifier used for this bulk request.
      sig { returns(T.nilable(String)) }
      attr_reader :template_id

      sig { params(template_id: String).void }
      attr_writer :template_id

      # The variables used for this bulk request.
      sig { returns(T.nilable(T::Hash[Symbol, String])) }
      attr_reader :variables

      sig { params(variables: T::Hash[Symbol, String]).void }
      attr_writer :variables

      sig do
        params(
          error_count: Integer,
          results:
            T::Array[
              PreludeSDK::Models::NotifySendBatchResponse::Result::OrHash
            ],
          success_count: Integer,
          total_count: Integer,
          callback_url: String,
          request_id: String,
          template_id: String,
          variables: T::Hash[Symbol, String]
        ).returns(T.attached_class)
      end
      def self.new(
        # Number of failed sends.
        error_count:,
        # The per-recipient result of the bulk send.
        results:,
        # Number of successful sends.
        success_count:,
        # Total number of recipients.
        total_count:,
        # The callback URL used for this bulk request, if any.
        callback_url: nil,
        # A string that identifies this specific request.
        request_id: nil,
        # The template identifier used for this bulk request.
        template_id: nil,
        # The variables used for this bulk request.
        variables: nil
      )
      end

      sig do
        override.returns(
          {
            error_count: Integer,
            results:
              T::Array[PreludeSDK::Models::NotifySendBatchResponse::Result],
            success_count: Integer,
            total_count: Integer,
            callback_url: String,
            request_id: String,
            template_id: String,
            variables: T::Hash[Symbol, String]
          }
        )
      end
      def to_hash
      end

      class Result < PreludeSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              PreludeSDK::Models::NotifySendBatchResponse::Result,
              PreludeSDK::Internal::AnyHash
            )
          end

        # The recipient's phone number in E.164 format.
        sig { returns(String) }
        attr_accessor :phone_number

        # Whether the message was accepted for delivery.
        sig { returns(T::Boolean) }
        attr_accessor :success

        # Present only if success is false.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::NotifySendBatchResponse::Result::Error
            )
          )
        end
        attr_reader :error

        sig do
          params(
            error:
              PreludeSDK::Models::NotifySendBatchResponse::Result::Error::OrHash
          ).void
        end
        attr_writer :error

        # Present only if success is true.
        sig do
          returns(
            T.nilable(
              PreludeSDK::Models::NotifySendBatchResponse::Result::Message
            )
          )
        end
        attr_reader :message

        sig do
          params(
            message:
              PreludeSDK::Models::NotifySendBatchResponse::Result::Message::OrHash
          ).void
        end
        attr_writer :message

        sig do
          params(
            phone_number: String,
            success: T::Boolean,
            error:
              PreludeSDK::Models::NotifySendBatchResponse::Result::Error::OrHash,
            message:
              PreludeSDK::Models::NotifySendBatchResponse::Result::Message::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The recipient's phone number in E.164 format.
          phone_number:,
          # Whether the message was accepted for delivery.
          success:,
          # Present only if success is false.
          error: nil,
          # Present only if success is true.
          message: nil
        )
        end

        sig do
          override.returns(
            {
              phone_number: String,
              success: T::Boolean,
              error: PreludeSDK::Models::NotifySendBatchResponse::Result::Error,
              message:
                PreludeSDK::Models::NotifySendBatchResponse::Result::Message
            }
          )
        end
        def to_hash
        end

        class Error < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Models::NotifySendBatchResponse::Result::Error,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The error code.
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          # A human-readable error message.
          sig { returns(T.nilable(String)) }
          attr_reader :message

          sig { params(message: String).void }
          attr_writer :message

          # Present only if success is false.
          sig do
            params(code: String, message: String).returns(T.attached_class)
          end
          def self.new(
            # The error code.
            code: nil,
            # A human-readable error message.
            message: nil
          )
          end

          sig { override.returns({ code: String, message: String }) }
          def to_hash
          end
        end

        class Message < PreludeSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                PreludeSDK::Models::NotifySendBatchResponse::Result::Message,
                PreludeSDK::Internal::AnyHash
              )
            end

          # The message identifier.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The correlation identifier for the message.
          sig { returns(T.nilable(String)) }
          attr_reader :correlation_id

          sig { params(correlation_id: String).void }
          attr_writer :correlation_id

          # The message creation date in RFC3339 format.
          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # The message expiration date in RFC3339 format.
          sig { returns(T.nilable(Time)) }
          attr_reader :expires_at

          sig { params(expires_at: Time).void }
          attr_writer :expires_at

          # The Sender ID used for this message.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # The locale used for the message, if any.
          sig { returns(T.nilable(String)) }
          attr_reader :locale

          sig { params(locale: String).void }
          attr_writer :locale

          # When the message will actually be sent in RFC3339 format with timezone offset.
          sig { returns(T.nilable(Time)) }
          attr_reader :schedule_at

          sig { params(schedule_at: Time).void }
          attr_writer :schedule_at

          # The recipient's phone number in E.164 format.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          # Present only if success is true.
          sig do
            params(
              id: String,
              correlation_id: String,
              created_at: Time,
              expires_at: Time,
              from: String,
              locale: String,
              schedule_at: Time,
              to: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The message identifier.
            id: nil,
            # The correlation identifier for the message.
            correlation_id: nil,
            # The message creation date in RFC3339 format.
            created_at: nil,
            # The message expiration date in RFC3339 format.
            expires_at: nil,
            # The Sender ID used for this message.
            from: nil,
            # The locale used for the message, if any.
            locale: nil,
            # When the message will actually be sent in RFC3339 format with timezone offset.
            schedule_at: nil,
            # The recipient's phone number in E.164 format.
            to: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                correlation_id: String,
                created_at: Time,
                expires_at: Time,
                from: String,
                locale: String,
                schedule_at: Time,
                to: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
