import Runestone

public extension TreeSitterIndentationScopes {
  static var html: TreeSitterIndentationScopes {
    return TreeSitterIndentationScopes(indent: ["start_tag", "element"], outdent: ["end_tag"])
  }
}

public extension TreeSitterIndentationScopes {
  static var json: TreeSitterIndentationScopes {
    return TreeSitterIndentationScopes(indent: ["object", "array"], outdent: ["}", "]"])
  }
}

//public extension TreeSitterIndentationScopes {
//  static var json5: TreeSitterIndentationScopes {
//    return TreeSitterIndentationScopes(indent: ["object", "array"], outdent: ["}", "]"])
//  }
//}

public extension TreeSitterIndentationScopes {
  static var maparoni: TreeSitterIndentationScopes {
    return TreeSitterIndentationScopes(
      indent: [
        "method_invocation",
        "array"
      ],
      outdent: [
        "}",
        "]"
      ])
  }
}
