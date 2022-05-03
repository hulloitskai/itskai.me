# typed: ignore

module Faraday
  class << self
    def new(url = nil, options = nil, &block); end

    # HTTP verb methods. These are proxied to Faraday::Connection, which should
    # have corresponding sigs.

    # Query methods:
    sig do
      params(
          url: String,
          params: T.nilable(T::Hash[Object, Object]),
          headers: T.nilable(T::Hash[Object, String]),
          block: T.nilable(T.proc.params(req: Faraday::Request).void),
        )
        .returns(Faraday::Response)
    end
    def get(url, params = nil, headers = nil, &block); end

    sig do
      params(
          url: String,
          params: T.nilable(T::Hash[Object, Object]),
          headers: T.nilable(T::Hash[Object, String]),
          block: T.nilable(T.proc.params(req: Faraday::Request).void),
        )
        .returns(Faraday::Response)
    end
    def head(url, params = nil, headers = nil, &block); end

    sig do
      params(
          url: String,
          params: T.nilable(T::Hash[Object, Object]),
          headers: T.nilable(T::Hash[Object, String]),
          block: T.nilable(T.proc.params(req: Faraday::Request).void),
        )
        .returns(Faraday::Response)
    end
    def delete(url, params = nil, headers = nil, &block); end

    sig do
      params(
          url: String,
          params: T.nilable(T::Hash[Object, Object]),
          headers: T.nilable(T::Hash[Object, String]),
          block: T.nilable(T.proc.params(req: Faraday::Request).void),
        )
        .returns(Faraday::Response)
    end
    def trace(url, params = nil, headers = nil, &block); end

    # Body methods:
    sig do
      params(
          url: String,
          body: T.any(String, T.nilable(T::Hash[Object, Object])),
          headers: T.nilable(T::Hash[Object, String]),
          block: T.nilable(T.proc.params(req: Faraday::Request).void),
        )
        .returns(Faraday::Response)
    end
    def post(url, body = nil, headers = nil, &block); end

    sig do
      params(
          url: String,
          body: T.any(String, T.nilable(T::Hash[Object, Object])),
          headers: T.nilable(T::Hash[Object, String]),
          block: T.nilable(T.proc.params(req: Faraday::Request).void),
        )
        .returns(Faraday::Response)
    end
    def put(url, body = nil, headers = nil, &block); end

    sig do
      params(
          url: String,
          body: T.any(String, T.nilable(T::Hash[Object, Object])),
          headers: T.nilable(T::Hash[Object, String]),
          block: T.nilable(T.proc.params(req: Faraday::Request).void),
        )
        .returns(Faraday::Response)
    end
    def patch(url, body = nil, headers = nil, &block); end
  end
end
