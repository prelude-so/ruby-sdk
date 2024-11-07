# frozen_string_literal: true

module Prelude
  class Client < Prelude::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Client option
    # @return [String]
    attr_reader :api_key

    # @return [Prelude::Resources::Authentication]
    attr_reader :authentication

    # @return [Prelude::Resources::Check]
    attr_reader :check

    # @return [Prelude::Resources::Retry]
    attr_reader :retry_

    # @return [Prelude::Resources::Lookup]
    attr_reader :lookup

    # @!visibility private
    def auth_headers
      {"x-api-key" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    # @param api_key [String, nil] Defaults to `ENV["PRELUDE_API_KEY"]`
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    def initialize(base_url: nil, api_key: nil, max_retries: DEFAULT_MAX_RETRIES, timeout: 60)
      base_url ||= "https://api.ding.live/v1"

      @api_key = [api_key, ENV["PRELUDE_API_KEY"]].find { |v| !v.nil? }
      if @api_key.nil?
        raise ArgumentError, "api_key is required"
      end

      super(base_url: base_url, max_retries: max_retries, timeout: timeout)

      @authentication = Prelude::Resources::Authentication.new(client: self)
      @check = Prelude::Resources::Check.new(client: self)
      @retry_ = Prelude::Resources::Retry.new(client: self)
      @lookup = Prelude::Resources::Lookup.new(client: self)
    end

    # @!visibility private
    def make_status_error(message:, body:, response:)
      case response.code.to_i
      when 400
        Prelude::HTTP::BadRequestError.new(message: message, response: response, body: body)
      when 401
        Prelude::HTTP::AuthenticationError.new(message: message, response: response, body: body)
      when 403
        Prelude::HTTP::PermissionDeniedError.new(message: message, response: response, body: body)
      when 404
        Prelude::HTTP::NotFoundError.new(message: message, response: response, body: body)
      when 409
        Prelude::HTTP::ConflictError.new(message: message, response: response, body: body)
      when 422
        Prelude::HTTP::UnprocessableEntityError.new(message: message, response: response, body: body)
      when 429
        Prelude::HTTP::RateLimitError.new(message: message, response: response, body: body)
      when 500..599
        Prelude::HTTP::InternalServerError.new(message: message, response: response, body: body)
      else
        Prelude::HTTP::APIStatusError.new(message: message, response: response, body: body)
      end
    end
  end
end
