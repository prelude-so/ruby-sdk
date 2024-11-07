# frozen_string_literal: true

module Prelude
  module Models
    class CheckCreateResponse < Prelude::BaseModel
      # @!attribute [rw] authentication_uuid
      #   The UUID of the corresponding authentication.
      #   @return [String]
      optional :authentication_uuid, String

      # @!attribute [rw] status
      #   The status of the check. Possible values are:
      #   * `valid` - The code is valid.
      #   * `invalid` - The code is invalid.
      #   * `without_attempt` - No attempt was sent yet, so a check cannot be completed.
      #   * `rate_limited` - The authentication was rate limited and cannot be checked.
      #   * `already_validated` - The authentication has already been validated.
      #   * `expired_auth` - The authentication has expired and cannot be checked.
      #
      #   @return [Symbol, Prelude::Models::CheckCreateResponse::Status]
      optional :status, enum: -> { Prelude::Models::CheckCreateResponse::Status }

      # The status of the check. Possible values are:
      #   * `valid` - The code is valid.
      #   * `invalid` - The code is invalid.
      #   * `without_attempt` - No attempt was sent yet, so a check cannot be completed.
      #   * `rate_limited` - The authentication was rate limited and cannot be checked.
      #   * `already_validated` - The authentication has already been validated.
      #   * `expired_auth` - The authentication has expired and cannot be checked.
      #
      class Status < Prelude::Enum
        VALID = :valid
        INVALID = :invalid
        WITHOUT_ATTEMPT = :without_attempt
        RATE_LIMITED = :rate_limited
        ALREADY_VALIDATED = :already_validated
        EXPIRED_AUTH = :expired_auth
      end

      # @!parse
      #   # Create a new instance of CheckCreateResponse from a Hash of raw data.
      #   #
      #   # @param data [Hash{Symbol => Object}] .
      #   #   @option data [String, nil] :authentication_uuid The UUID of the corresponding authentication.
      #   #   @option data [String, nil] :status
      #   #     The status of the check. Possible values are:
      #   #
      #   #     - `valid` - The code is valid.
      #   #     - `invalid` - The code is invalid.
      #   #     - `without_attempt` - No attempt was sent yet, so a check cannot be completed.
      #   #     - `rate_limited` - The authentication was rate limited and cannot be checked.
      #   #     - `already_validated` - The authentication has already been validated.
      #   #     - `expired_auth` - The authentication has expired and cannot be checked.
      #   def initialize(data = {}) = super
    end
  end
end
