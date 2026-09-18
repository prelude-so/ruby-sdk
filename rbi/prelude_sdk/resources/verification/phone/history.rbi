# typed: strong

module PreludeSDK
  module Resources
    class Verification
      class Phone
        # Verify phone numbers.
        class History
          # Retrieve everything Prelude recorded for one phone verification: its outcome and
          # the device, network and anti-fraud context it was created in, the chronological
          # timeline of every message attempt and code check, and the anti-fraud signals you
          # forwarded.
          #
          # The identifier is the `id` returned by
          # [Create or retry a verification](/verify/v2/api-reference/create-or-retry-a-verification)
          # or the `verification_id` of the verification webhooks. Both `lifecycle` and
          # `signals` are optional: a verification can resolve with its top-level fields
          # alone.
          sig do
            params(
              id: String,
              request_options: PreludeSDK::RequestOptions::OrHash
            ).returns(
              PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse
            )
          end
          def retrieve(
            # The verification identifier.
            id,
            request_options: {}
          )
          end

          # List your phone verifications, most recent first, one entry per verification
          # with its outcome, channels, attempts and cost. Every filter is optional and they
          # combine with AND.
          #
          # Use it to find every verification a phone number went through from your support
          # tooling, then
          # [Get a phone verification](/verify/v2/api-reference/history/get-a-phone-verification)
          # for the full timeline of one of them. A cursor is bound to the filters that
          # produced it: pass `next_cursor` back with the exact same query parameters.
          sig do
            params(
              channels:
                T::Array[
                  PreludeSDK::Verification::Phone::HistoryListParams::Channel::OrSymbol
                ],
              cursor: String,
              device_platform:
                PreludeSDK::Verification::Phone::HistoryListParams::DevicePlatform::OrSymbol,
              from: Time,
              limit: Integer,
              max_attempts: Integer,
              min_attempts: Integer,
              phone_number: String,
              region: String,
              status:
                PreludeSDK::Verification::Phone::HistoryListParams::Status::OrSymbol,
              template_id: String,
              to: Time,
              request_options: PreludeSDK::RequestOptions::OrHash
            ).returns(
              PreludeSDK::Models::Verification::Phone::HistoryListResponse
            )
          end
          def list(
            # Only verifications that could use one of these channels. Repeat the parameter
            # for several values.
            channels: nil,
            # Pagination cursor from the previous response.
            cursor: nil,
            # Only verifications created from this device platform.
            device_platform: nil,
            # Only verifications created at or after this RFC 3339 timestamp. Goes with `to`,
            # at most 6 months apart. Without them the whole history is searched.
            from: nil,
            # Maximum number of verifications to return per page.
            limit: nil,
            # Only verifications that sent at most this many messages. `0` keeps the
            # verifications that never sent one.
            max_attempts: nil,
            # Only verifications that sent at least this many messages.
            min_attempts: nil,
            # Only verifications targeting this E.164 phone number. The leading `+` may be
            # omitted.
            phone_number: nil,
            # Only verifications of phone numbers from this region, as an ISO 3166-1 alpha-2
            # code.
            region: nil,
            # Only verifications in this status. `pending_check` cannot be filtered on.
            status: nil,
            # Only verifications sent with this template, as returned in `template_id` by
            # [Get a phone verification](/verify/v2/api-reference/history/get-a-phone-verification).
            # Built-in templates (`prelude:*`) cannot be filtered on.
            template_id: nil,
            # Only verifications created at or before this RFC 3339 timestamp. Goes with
            # `from`.
            to: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: PreludeSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
