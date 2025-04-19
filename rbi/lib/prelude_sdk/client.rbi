# typed: strong

module PreludeSDK
  class Client < PreludeSDK::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # Bearer token for authorizing API requests.
    sig { returns(String) }
    attr_reader :api_token

    sig { returns(PreludeSDK::Resources::Lookup) }
    attr_reader :lookup

    sig { returns(PreludeSDK::Resources::Transactional) }
    attr_reader :transactional

    sig { returns(PreludeSDK::Resources::Verification) }
    attr_reader :verification

    sig { returns(PreludeSDK::Resources::Watch) }
    attr_reader :watch

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers; end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_token: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      # Bearer token for authorizing API requests. Defaults to `ENV["API_TOKEN"]`
      api_token: ENV["API_TOKEN"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["PRELUDE_BASE_URL"]`
      base_url: ENV["PRELUDE_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: PreludeSDK::Client::DEFAULT_MAX_RETRIES,
      timeout: PreludeSDK::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: PreludeSDK::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: PreludeSDK::Client::DEFAULT_MAX_RETRY_DELAY
    ); end
  end
end
