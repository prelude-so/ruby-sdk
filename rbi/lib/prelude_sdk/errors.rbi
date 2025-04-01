# typed: strong

module PreludeSDK
  class Error < StandardError
    sig { returns(T.nilable(StandardError)) }
    attr_accessor :cause
  end

  class ConversionError < PreludeSDK::Error
  end

  class APIError < PreludeSDK::Error
    sig { returns(URI::Generic) }
    attr_accessor :url

    sig { returns(T.nilable(Integer)) }
    attr_accessor :status

    sig { returns(T.nilable(T.anything)) }
    attr_accessor :body

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: T.nilable(Integer),
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: nil)
    end
  end

  class APIConnectionError < PreludeSDK::APIError
    sig { void }
    attr_accessor :status

    sig { void }
    attr_accessor :body

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Connection error.")
    end
  end

  class APITimeoutError < PreludeSDK::APIConnectionError
    # @api private
    sig do
      params(
        url: URI::Generic,
        status: NilClass,
        body: NilClass,
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status: nil, body: nil, request: nil, response: nil, message: "Request timed out.")
    end
  end

  class APIStatusError < PreludeSDK::APIError
    # @api private
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.for(url:, status:, body:, request:, response:, message: nil)
    end

    sig { returns(Integer) }
    attr_accessor :status

    # @api private
    sig do
      params(
        url: URI::Generic,
        status: Integer,
        body: T.nilable(Object),
        request: NilClass,
        response: NilClass,
        message: T.nilable(String)
      )
        .returns(T.attached_class)
    end
    def self.new(url:, status:, body:, request:, response:, message: nil)
    end
  end

  class BadRequestError < PreludeSDK::APIStatusError
    HTTP_STATUS = 400
  end

  class AuthenticationError < PreludeSDK::APIStatusError
    HTTP_STATUS = 401
  end

  class PermissionDeniedError < PreludeSDK::APIStatusError
    HTTP_STATUS = 403
  end

  class NotFoundError < PreludeSDK::APIStatusError
    HTTP_STATUS = 404
  end

  class ConflictError < PreludeSDK::APIStatusError
    HTTP_STATUS = 409
  end

  class UnprocessableEntityError < PreludeSDK::APIStatusError
    HTTP_STATUS = 422
  end

  class RateLimitError < PreludeSDK::APIStatusError
    HTTP_STATUS = 429
  end

  class InternalServerError < PreludeSDK::APIStatusError
    HTTP_STATUS = T.let((500..), T::Range[Integer])
  end
end
