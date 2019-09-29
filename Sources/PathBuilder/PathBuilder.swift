@_functionBuilder
public struct PathBuilder {

    public static func buildBlock(_ components: PathComponent...) -> PathComponent {
        return Subpath(path: .build(components: components))
    }

    public static func buildIf(_ component: PathComponent?) -> PathComponent {
        return component.flatMap { component in
            Subpath { component }
        } ?? Subpath()
    }

    public static func buildEither(first: PathComponent) -> PathComponent {
        return first
    }

    public static func buildEither(second: PathComponent) -> PathComponent {
        return second
    }
}
