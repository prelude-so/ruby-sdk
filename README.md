# Prelude Ruby API library

The Prelude Ruby library provides convenient access to the Prelude REST API from any Ruby 3.1.0+ application.

It is generated with [Stainless](https://www.stainless.com/).

## Documentation

Documentation for released of this gem can be found [on RubyDoc](https://gemdocs.org/gems/prelude-sdk).

The underlying REST API documentation can be found on [docs.prelude.so](https://docs.prelude.so).

## Installation

To use this gem, install via Bundler by adding the following to your application's `Gemfile`:

```ruby
gem "prelude-sdk", "~> 0.1.0.pre.alpha.1"
```

To fetch an initial copy of the gem:

```sh
bundle install
```

## Usage

```ruby
require "bundler/setup"
require "prelude-sdk"

prelude = PreludeSDK::Client.new(
  api_token: "My API Token" # defaults to ENV["API_TOKEN"]
)

verification = prelude.verification.create(
  target: {
    type: "phone_number",
    value: "+30123456789"
  }
)

puts(verification.id)
```

### Errors

When the library is unable to connect to the API, or if the API returns a non-success status code (i.e., 4xx or 5xx response), a subclass of `PreludeSDK::Error` will be thrown:

```ruby
begin
  verification = prelude.verification.create(
    target: {
      type: "phone_number",
      value: "+30123456789"
    }
  )
rescue PreludeSDK::Errors::APIError => e
  puts(e.status) # 400
end
```

Error codes are as followed:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >= 500      | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short exponential backoff.

Connection errors (for example, due to a network connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors, and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
prelude = PreludeSDK::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
prelude.verification.create(
  target: {
    type: "phone_number",
    value: "+30123456789"
  },
  request_options: {max_retries: 5}
)
```

### Timeouts

By default, requests will time out after 60 seconds.

Timeouts are applied separately to the initial connection and the overall request time, so in some cases a request could wait 2\*timeout seconds before it fails.

You can use the `timeout` option to configure or disable this:

```ruby
# Configure the default for all requests:
prelude = PreludeSDK::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
prelude.verification.create(
  target: {
    type: "phone_number",
    value: "+30123456789"
  },
  request_options: {timeout: 5}
)
```

## LSP Support

### Sorbet

**This library emits an intentional warning under the [`tapioca` toolchain](https://github.com/Shopify/tapioca)**. This is normal, and does not impact functionality.

This library is written with [Sorbet type definitions](https://sorbet.org/docs/rbi). However, there is no runtime dependency on the `sorbet-runtime`.

What this means is that while you can use Sorbet to type check your code statically, and benefit from the [Sorbet Language Server](https://sorbet.org/docs/lsp) in your editor, there is no runtime type checking and execution overhead from Sorbet itself.

Due to limitations with the Sorbet type system, where a method otherwise can take an instance of `PreludeSDK::BaseModel` class, you will need to use the `**` splat operator to pass the arguments:

Please follow Sorbet's [setup guides](https://sorbet.org/docs/adopting) for best experience.

```ruby
model = PreludeSDK::Models::VerificationCreateParams.new(
  target: {
    type: "phone_number",
    value: "+30123456789"
  }
)

prelude.verification.create(**model)
```

## Advanced

### Making custom/undocumented requests

This library is typed for convenient access to the documented API.

If you need to access undocumented endpoints, params, or response properties, the library can still be used.

#### Undocumented request params

If you want to explicitly send an extra param, you can do so with the `extra_query`, `extra_body`, and `extra_headers` under the `request_options:` parameter when making a requests as seen in examples above.

#### Undocumented endpoints

To make requests to undocumented endpoints, you can make requests using `client.request`. Options on the client will be respected (such as retries) when making this request.

```ruby
response =
  client.request(
    method: :post,
    path: '/undocumented/endpoint',
    query: {"dog": "woof"},
    headers: {"useful-header": "interesting-value"},
    body: {"he": "llo"},
  )
```

### Concurrency & Connection Pooling

The `PreludeSDK::Client` instances are thread-safe, and should be re-used across multiple threads. By default, each `Client` have their own HTTP connection pool, with a maximum number of connections equal to thread count.

When the maximum number of connections has been checked out from the connection pool, the `Client` will wait for an in use connection to become available. The queue time for this mechanism is accounted for by the per-request timeout.

Unless otherwise specified, other classes in the SDK do not have locks protecting their underlying data structure.

Currently, `PreludeSDK::Client` instances are only fork-safe if there are no in-flight HTTP requests.

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the library is in initial development and has a major version of `0`, APIs may change at any time.

This package considers improvements to the (non-runtime) `*.rbi` and `*.rbs` type definitions to be non-breaking changes.

## Requirements

Ruby 3.1.0 or higher.
