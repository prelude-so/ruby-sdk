# frozen_string_literal: true

module PreludeSDK
  module Resources
    class VerificationManagement
      # Verify phone numbers.
      class Sandbox
        # Some parameter documentations has been truncated, see
        # {PreludeSDK::Models::VerificationManagement::SandboxAddPhoneNumberParams} for
        # more details.
        #
        # Register a phone number as a sandbox number and associate it with a fixed
        # attempt code. Subsequent verification attempts against this number will not
        # trigger a real SMS/call and will validate against the configured attempt code.
        #
        # This operation is idempotent - re-adding the same phone number will overwrite
        # the existing attempt code.
        #
        # In order to get access to this endpoint, contact our support team.
        #
        # @overload add_phone_number(attempt_code:, phone_number:, request_options: {})
        #
        # @param attempt_code [String] The fixed attempt code that will validate verification attempts for this phone n
        #
        # @param phone_number [String] An E.164 formatted phone number to add to the sandbox list.
        #
        # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [PreludeSDK::Models::VerificationManagement::SandboxAddPhoneNumberResponse]
        #
        # @see PreludeSDK::Models::VerificationManagement::SandboxAddPhoneNumberParams
        def add_phone_number(params)
          parsed, options = PreludeSDK::VerificationManagement::SandboxAddPhoneNumberParams.dump_request(params)
          @client.request(
            method: :put,
            path: "v2/verification/management/phone-numbers/sandbox",
            body: parsed,
            model: PreludeSDK::Models::VerificationManagement::SandboxAddPhoneNumberResponse,
            options: options
          )
        end

        # Remove a phone number from the sandbox list.
        #
        # This operation is idempotent - deleting a phone number that is not in the
        # sandbox list will succeed without making any changes.
        #
        # In order to get access to this endpoint, contact our support team.
        #
        # @overload delete_phone_number(phone_number, request_options: {})
        #
        # @param phone_number [String] The E.164 formatted phone number to remove from the sandbox list.
        #
        # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [PreludeSDK::Models::VerificationManagement::SandboxDeletePhoneNumberResponse]
        #
        # @see PreludeSDK::Models::VerificationManagement::SandboxDeletePhoneNumberParams
        def delete_phone_number(phone_number, params = {})
          @client.request(
            method: :delete,
            path: ["v2/verification/management/phone-numbers/sandbox/%1$s", phone_number],
            model: PreludeSDK::Models::VerificationManagement::SandboxDeletePhoneNumberResponse,
            options: params[:request_options]
          )
        end

        # Retrieve the list of sandbox phone numbers for the account. Sandbox numbers are
        # test numbers that bypass the real verification flow and return a fixed attempt
        # code.
        #
        # In order to get access to this endpoint, contact our support team.
        #
        # @overload list_phone_numbers(request_options: {})
        #
        # @param request_options [PreludeSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse]
        #
        # @see PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersParams
        def list_phone_numbers(params = {})
          @client.request(
            method: :get,
            path: "v2/verification/management/phone-numbers/sandbox",
            model: PreludeSDK::Models::VerificationManagement::SandboxListPhoneNumbersResponse,
            options: params[:request_options]
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
