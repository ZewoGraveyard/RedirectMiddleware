@_exported import S4

public struct RedirectMiddleware: Middleware {

    public let redirectTo: String
    public let shouldRedirect: Request -> Bool

    public init(redirectTo: String, if shouldRedirect: Request -> Bool) {
        self.redirectTo = redirectTo
        self.shouldRedirect = shouldRedirect
    }

    public func respond(to request: Request, chainingTo chain: Responder) throws -> Response {
        if shouldRedirect(request) {
            return Response(status: .found, headers: ["location":[redirectTo]])
        }

        return try chain.respond(to: request)
    }
}
