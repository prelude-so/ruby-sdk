# frozen_string_literal: true

module Prelude
  module Models
    class RetryCreateResponse < Prelude::BaseModel
      # @!attribute [rw] authentication_uuid
      #   The UUID of the corresponding authentication.
      #   @return [String]
      optional :authentication_uuid, String

      # @!attribute [rw] created_at
      #   @return [Time]
      optional :created_at, Time

      # @!attribute [rw] next_retry_at
      #   The time at which the next retry will be available.
      #   @return [Time]
      optional :next_retry_at, Time

      # @!attribute [rw] remaining_retry
      #   The number of remaining retries.
      #   @return [Integer]
      optional :remaining_retry, Integer

      # @!attribute [rw] status
      #   The status of the retry. Possible values are:
      #   * `approved` - The retry was approved and a new code was sent.
      #   * `denied` - The retry was denied.
      #   * `no_attempt` - No attempt was sent yet, so a retry cannot be completed.
      #   * `rate_limited` - The authentication was rate limited and cannot be retried.
      #   * `expired_auth` - The authentication has expired and cannot be retried.
      #   * `already_validated` - The authentication has already been validated.
      #
      #   @return [Symbol, Prelude::Models::RetryCreateResponse::Status]
      optional :status, enum: -> { Prelude::Models::RetryCreateResponse::Status }

      # The status of the retry. Possible values are:
      #   * `approved` - The retry was approved and a new code was sent.
      #   * `denied` - The retry was denied.
      #   * `no_attempt` - No attempt was sent yet, so a retry cannot be completed.
      #   * `rate_limited` - The authentication was rate limited and cannot be retried.
      #   * `expired_auth` - The authentication has expired and cannot be retried.
      #   * `already_validated` - The authentication has already been validated.
      #
      class Status < Prelude::Enum
        APPROVED = :approved
        DENIED = :denied
        NO_ATTEMPT = :no_attempt
        RATE_LIMITED = :rate_limited
        EXPIRED_AUTH = :expired_auth
        ALREADY_VALIDATED = :already_validated
      end

      # @!parse
      #   # Create a new instance of RetryCreateResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :authentication_uuid The UUID of the corresponding authentication.
      #   #   @option data [String, nil] :created_at
      #   #   @option data [String, nil] :next_retry_at The time at which the next retry will be available.
      #   #   @option data [Integer, nil] :remaining_retry The number of remaining retries.
      #   #   @option data [String, nil] :status
      #   #     The status of the retry. Possible values are:
      #   #
      #   #     - `approved` - The retry was approved and a new code was sent.
      #   #     - `denied` - The retry was denied.
      #   #     - `no_attempt` - No attempt was sent yet, so a retry cannot be completed.
      #   #     - `rate_limited` - The authentication was rate limited and cannot be retried.
      #   #     - `expired_auth` - The authentication has expired and cannot be retried.
      #   #     - `already_validated` - The authentication has already been validated.
      #   def initialize(data = {}) = super
    end
  end
end
