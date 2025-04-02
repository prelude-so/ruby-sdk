# frozen_string_literal: true

module PreludeSDK
  module Errors
    class Error < StandardError
      # @!parse
      #   # @return [StandardError, nil]
      #   attr_accessor :cause
    end

    class ConversionError < PreludeSDK::Errors::Error
    end

    class APIError < PreludeSDK::Errors::Error
      # @return [URI::Generic]
      attr_accessor :url

      # @return [Integer, nil]
      attr_accessor :status

      # @return [Object, nil]
      attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer, nil]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
        @url = url
        @status = status
        @body = body
        @request = request
        @response = response
        super(message)
      end
    end

    class APIConnectionError < PreludeSDK::Errors::APIError
      # @!parse
      #   # @return [nil]
      #   attr_accessor :status

      # @!parse
      #   # @return [nil]
      #   attr_accessor :body

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Connection error."
      )
        super
      end
    end

    class APITimeoutError < PreludeSDK::Errors::APIConnectionError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [nil]
      # @param body [nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(
        url:,
        status: nil,
        body: nil,
        request: nil,
        response: nil,
        message: "Request timed out."
      )
        super
      end
    end

    class APIStatusError < PreludeSDK::Errors::APIError
      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      #
      # @return [PreludeSDK::Errors::APIStatusError]
      def self.for(url:, status:, body:, request:, response:, message: nil)
        kwargs = {
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message
        }

        case status
        in 400
          PreludeSDK::Errors::BadRequestError.new(**kwargs)
        in 401
          PreludeSDK::Errors::AuthenticationError.new(**kwargs)
        in 403
          PreludeSDK::Errors::PermissionDeniedError.new(**kwargs)
        in 404
          PreludeSDK::Errors::NotFoundError.new(**kwargs)
        in 409
          PreludeSDK::Errors::ConflictError.new(**kwargs)
        in 422
          PreludeSDK::Errors::UnprocessableEntityError.new(**kwargs)
        in 429
          PreludeSDK::Errors::RateLimitError.new(**kwargs)
        in (500..)
          PreludeSDK::Errors::InternalServerError.new(**kwargs)
        else
          PreludeSDK::Errors::APIStatusError.new(**kwargs)
        end
      end

      # @!parse
      #   # @return [Integer]
      #   attr_accessor :status

      # @api private
      #
      # @param url [URI::Generic]
      # @param status [Integer]
      # @param body [Object, nil]
      # @param request [nil]
      # @param response [nil]
      # @param message [String, nil]
      def initialize(url:, status:, body:, request:, response:, message: nil)
        message ||= {url: url.to_s, status: status, body: body}
        super(
          url: url,
          status: status,
          body: body,
          request: request,
          response: response,
          message: message&.to_s
        )
      end
    end

    class BadRequestError < PreludeSDK::Errors::APIStatusError
      HTTP_STATUS = 400
    end

    class AuthenticationError < PreludeSDK::Errors::APIStatusError
      HTTP_STATUS = 401
    end

    class PermissionDeniedError < PreludeSDK::Errors::APIStatusError
      HTTP_STATUS = 403
    end

    class NotFoundError < PreludeSDK::Errors::APIStatusError
      HTTP_STATUS = 404
    end

    class ConflictError < PreludeSDK::Errors::APIStatusError
      HTTP_STATUS = 409
    end

    class UnprocessableEntityError < PreludeSDK::Errors::APIStatusError
      HTTP_STATUS = 422
    end

    class RateLimitError < PreludeSDK::Errors::APIStatusError
      HTTP_STATUS = 429
    end

    class InternalServerError < PreludeSDK::Errors::APIStatusError
      HTTP_STATUS = (500..)
    end
  end

  Error = PreludeSDK::Errors::Error

  ConversionError = PreludeSDK::Errors::ConversionError

  APIError = PreludeSDK::Errors::APIError

  APIStatusError = PreludeSDK::Errors::APIStatusError

  APIConnectionError = PreludeSDK::Errors::APIConnectionError

  APITimeoutError = PreludeSDK::Errors::APITimeoutError

  BadRequestError = PreludeSDK::Errors::BadRequestError

  AuthenticationError = PreludeSDK::Errors::AuthenticationError

  PermissionDeniedError = PreludeSDK::Errors::PermissionDeniedError

  NotFoundError = PreludeSDK::Errors::NotFoundError

  ConflictError = PreludeSDK::Errors::ConflictError

  UnprocessableEntityError = PreludeSDK::Errors::UnprocessableEntityError

  RateLimitError = PreludeSDK::Errors::RateLimitError

  InternalServerError = PreludeSDK::Errors::InternalServerError
end
