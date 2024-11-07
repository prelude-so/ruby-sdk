# frozen_string_literal: true

module Prelude
  class Client < Prelude::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Client option
    # @return [String]
    attr_reader :api_token

    # @return [Prelude::Resources::Verification]
    attr_reader :verification

    # @return [Prelude::Resources::Transactional]
    attr_reader :transactional

    # @!visibility private
    def auth_headers
      {"Authorization" => "Bearer #{@api_token}"}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g., `"https://api.example.com/v2/"`
    # @param api_token [String, nil] Bearer token for authorizing API requests. Defaults to `ENV["API_TOKEN"]`
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    def initialize(base_url: nil, api_token: nil, max_retries: DEFAULT_MAX_RETRIES, timeout: 60)
      base_url ||= "https://api.prelude.dev"

      @api_token = [api_token, ENV["API_TOKEN"]].find { |v| !v.nil? }
      if @api_token.nil?
        raise ArgumentError, "api_token is required"
      end

      super(base_url: base_url, max_retries: max_retries, timeout: timeout)

      @verification = Prelude::Resources::Verification.new(client: self)
      @transactional = Prelude::Resources::Transactional.new(client: self)
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
