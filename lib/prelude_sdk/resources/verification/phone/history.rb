# frozen_string_literal: true

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
          #
          # @overload retrieve(id, request_options: {})
          #
          # @param id [String] The verification identifier.
          #
          # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse]
          #
          # @see PreludeSDK::Models::Verification::Phone::HistoryRetrieveParams
          def retrieve(id, params = {})
            @client.request(
              method: :get,
              path: ["v2/verification/phone/history/%1$s", id],
              model: PreludeSDK::Models::Verification::Phone::HistoryRetrieveResponse,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {PreludeSDK::Models::Verification::Phone::HistoryListParams} for more details.
          #
          # List your phone verifications, most recent first, one entry per verification
          # with its outcome, channels, attempts and cost. Every filter is optional and they
          # combine with AND.
          #
          # Use it to find every verification a phone number went through from your support
          # tooling, then
          # [Get a phone verification](/verify/v2/api-reference/history/get-a-phone-verification)
          # for the full timeline of one of them. A cursor is bound to the filters that
          # produced it: pass `next_cursor` back with the exact same query parameters.
          #
          # @overload list(channels: nil, cursor: nil, device_platform: nil, from: nil, limit: nil, max_attempts: nil, min_attempts: nil, phone_number: nil, region: nil, status: nil, template_id: nil, to: nil, request_options: {})
          #
          # @param channels [Array<Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::Channel>] Only verifications that could use one of these channels. Repeat the parameter fo
          #
          # @param cursor [String] Pagination cursor from the previous response.
          #
          # @param device_platform [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::DevicePlatform] Only verifications created from this device platform.
          #
          # @param from [Time] Only verifications created at or after this RFC 3339 timestamp. Goes with `to`,
          #
          # @param limit [Integer] Maximum number of verifications to return per page.
          #
          # @param max_attempts [Integer] Only verifications that sent at most this many messages. `0` keeps the verificat
          #
          # @param min_attempts [Integer] Only verifications that sent at least this many messages.
          #
          # @param phone_number [String] Only verifications targeting this E.164 phone number. The leading `+` may be omi
          #
          # @param region [String] Only verifications of phone numbers from this region, as an ISO 3166-1 alpha-2 c
          #
          # @param status [Symbol, PreludeSDK::Models::Verification::Phone::HistoryListParams::Status] Only verifications in this status. `pending_check` cannot be filtered on.
          #
          # @param template_id [String] Only verifications sent with this template, as returned in `template_id` by [Get
          #
          # @param to [Time] Only verifications created at or before this RFC 3339 timestamp. Goes with `from
          #
          # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [PreludeSDK::Models::Verification::Phone::HistoryListResponse]
          #
          # @see PreludeSDK::Models::Verification::Phone::HistoryListParams
          def list(params = {})
            parsed, options = PreludeSDK::Verification::Phone::HistoryListParams.dump_request(params)
            query = PreludeSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "v2/verification/phone/history",
              query: query,
              model: PreludeSDK::Models::Verification::Phone::HistoryListResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [PreludeSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
