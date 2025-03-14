# typed: strong

module PreludeSDK
  class Client < PreludeSDK::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # Bearer token for authorizing API requests.
    sig { returns(String) }
    def api_token
    end

    sig { returns(PreludeSDK::Resources::Transactional) }
    def transactional
    end

    sig { returns(PreludeSDK::Resources::Verification) }
    def verification
    end

    sig { returns(PreludeSDK::Resources::Watch) }
    def watch
    end

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        base_url: T.nilable(String),
        api_token: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      )
        .returns(T.attached_class)
    end
    def self.new(
      base_url: nil,
      api_token: ENV["API_TOKEN"],
      max_retries: DEFAULT_MAX_RETRIES,
      timeout: DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
