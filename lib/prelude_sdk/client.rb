# frozen_string_literal: true

module PreludeSDK
  class Client < PreludeSDK::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # Bearer token for authorizing API requests.
    # @return [String]
    attr_reader :api_token

    # @return [PreludeSDK::Resources::Lookup]
    attr_reader :lookup

    # @return [PreludeSDK::Resources::Transactional]
    attr_reader :transactional

    # @return [PreludeSDK::Resources::Verification]
    attr_reader :verification

    # @return [PreludeSDK::Resources::Watch]
    attr_reader :watch

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      return {} if @api_token.nil?

      {"authorization" => "Bearer #{@api_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_token [String, nil] Bearer token for authorizing API requests. Defaults to `ENV["API_TOKEN"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["PRELUDE_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_token: ENV["API_TOKEN"],
      base_url: ENV["PRELUDE_BASE_URL"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://api.prelude.dev"

      if api_token.nil?
        raise ArgumentError.new("api_token is required, and can be set via environ: \"API_TOKEN\"")
      end

      @api_token = api_token.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @lookup = PreludeSDK::Resources::Lookup.new(client: self)
      @transactional = PreludeSDK::Resources::Transactional.new(client: self)
      @verification = PreludeSDK::Resources::Verification.new(client: self)
      @watch = PreludeSDK::Resources::Watch.new(client: self)
    end
  end
end
