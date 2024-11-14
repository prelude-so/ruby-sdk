# frozen_string_literal: true

module PreludeSDK
  class Client < PreludeSDK::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Client option
    # @return [String]
    attr_reader :api_token

    # @return [PreludeSDK::Resources::Transactional]
    attr_reader :transactional

    # @return [PreludeSDK::Resources::Verification]
    attr_reader :verification

    # @return [PreludeSDK::Resources::Watch]
    attr_reader :watch

    # @!visibility private
    def auth_headers
      {"Authorization" => "Bearer #{@api_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    # @param api_token [String, nil] Bearer token for authorizing API requests. Defaults to `ENV["API_TOKEN"]`
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    def initialize(
      base_url: nil,
      api_token: ENV["API_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.prelude.dev"

      if api_token.nil?
        raise ArgumentError, "api_token is required"
      end

      @api_token = api_token.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @transactional = PreludeSDK::Resources::Transactional.new(client: self)
      @verification = PreludeSDK::Resources::Verification.new(client: self)
      @watch = PreludeSDK::Resources::Watch.new(client: self)
    end

    # @!visibility private
    private def make_status_error(message:, body:, response:)
      case response.code.to_i
      in 400
        PreludeSDK::HTTP::BadRequestError.new(message: message, response: response, body: body)
      in 401
        PreludeSDK::HTTP::AuthenticationError.new(message: message, response: response, body: body)
      in 403
        PreludeSDK::HTTP::PermissionDeniedError.new(message: message, response: response, body: body)
      in 404
        PreludeSDK::HTTP::NotFoundError.new(message: message, response: response, body: body)
      in 409
        PreludeSDK::HTTP::ConflictError.new(message: message, response: response, body: body)
      in 422
        PreludeSDK::HTTP::UnprocessableEntityError.new(message: message, response: response, body: body)
      in 429
        PreludeSDK::HTTP::RateLimitError.new(message: message, response: response, body: body)
      in 500..599
        PreludeSDK::HTTP::InternalServerError.new(message: message, response: response, body: body)
      else
        PreludeSDK::HTTP::APIStatusError.new(message: message, response: response, body: body)
      end
    end
  end
end
