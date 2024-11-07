# frozen_string_literal: true

module Prelude
  module Models
    class AuthenticationCreateResponse < Prelude::BaseModel
      # @!attribute [rw] authentication_uuid
      #   A unique identifier for the authentication that you can use on the /check and /retry endpoints.
      #   @return [String]
      optional :authentication_uuid, String

      # @!attribute [rw] created_at
      #   @return [Time]
      optional :created_at, Time

      # @!attribute [rw] expires_at
      #   The time at which the authentication expires and can no longer be checked or retried.
      #   @return [Time]
      optional :expires_at, Time

      # @!attribute [rw] status
      #   The status of the authentication. Possible values are:
      #   * `pending` - The OTP code is being sent.
      #   * `rate_limited` - This user is rate-limited and cannot receive another code.
      #   * `spam_detected` - This attempt is flagged as spam. Go to the dashboard for more details.
      #
      #   @return [Symbol, Prelude::Models::AuthenticationCreateResponse::Status]
      optional :status, enum: -> { Prelude::Models::AuthenticationCreateResponse::Status }

      # The status of the authentication. Possible values are:
      #   * `pending` - The OTP code is being sent.
      #   * `rate_limited` - This user is rate-limited and cannot receive another code.
      #   * `spam_detected` - This attempt is flagged as spam. Go to the dashboard for more details.
      #
      class Status < Prelude::Enum
        PENDING = :pending
        RATE_LIMITED = :rate_limited
        SPAM_DETECTED = :spam_detected
      end

      # @!parse
      #   # Create a new instance of AuthenticationCreateResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :authentication_uuid A unique identifier for the authentication that you can use on the /check and
      #   #     /retry endpoints.
      #   #   @option data [String, nil] :created_at
      #   #   @option data [String, nil] :expires_at The time at which the authentication expires and can no longer be checked or
      #   #     retried.
      #   #   @option data [String, nil] :status
      #   #     The status of the authentication. Possible values are:
      #   #
      #   #     - `pending` - The OTP code is being sent.
      #   #     - `rate_limited` - This user is rate-limited and cannot receive another code.
      #   #     - `spam_detected` - This attempt is flagged as spam. Go to the dashboard for
      #   #       more details.
      #   def initialize(data = {}) = super
    end
  end
end
