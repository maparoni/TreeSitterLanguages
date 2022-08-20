import Runestone

import TreeSitterHTML
import TreeSitterHTMLQueries
//import TreeSitterJSON5
//import TreeSitterJSON5Queries
import TreeSitterJSON
import TreeSitterJSONQueries
import TreeSitterMaparoni
import TreeSitterMaparoniQueries
import TreeSitterMarkdown
import TreeSitterMarkdownQueries
//import TreeSitterRegex
//import TreeSitterRegexQueries

public extension TreeSitterLanguage {
  static var html: TreeSitterLanguage = {
    let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterHTMLQueries.Query.highlightsFileURL)
    let injectionsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterHTMLQueries.Query.injectionsFileURL)
    return TreeSitterLanguage(tree_sitter_html(), highlightsQuery: highlightsQuery, injectionsQuery: injectionsQuery, indentationScopes: .html)
  }()
}


//public extension TreeSitterLanguage {
//  static var json5: TreeSitterLanguage = {
//    let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterJSON5Queries.Query.highlightsFileURL)
//    let injectionsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterJSON5Queries.Query.injectionsFileURL)
//    return TreeSitterLanguage(tree_sitter_json5(), highlightsQuery: highlightsQuery, injectionsQuery: injectionsQuery, indentationScopes: .json5)
//  }()
//}

public extension TreeSitterLanguage {
  static var json: TreeSitterLanguage = {
    let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterJSONQueries.Query.highlightsFileURL)
    return TreeSitterLanguage(tree_sitter_json(), highlightsQuery: highlightsQuery, indentationScopes: .json)
  }()
}

public extension TreeSitterLanguage {
  static var maparoni: TreeSitterLanguage = {
    let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterMaparoniQueries.Query.highlightsFileURL)
    return TreeSitterLanguage(tree_sitter_maparoni(), highlightsQuery: highlightsQuery, indentationScopes: .maparoni)
  }()
}

public extension TreeSitterLanguage {
  static var markdown: TreeSitterLanguage = {
    let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterMarkdownQueries.Query.highlightsFileURL)
    let injectionsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterMarkdownQueries.Query.injectionsFileURL)
    return TreeSitterLanguage(tree_sitter_markdown(), highlightsQuery: highlightsQuery, injectionsQuery: injectionsQuery)
  }()
}

//public extension TreeSitterLanguage {
//  static var regex: TreeSitterLanguage = {
//    let highlightsQuery = TreeSitterLanguage.Query(contentsOf: TreeSitterRegexQueries.Query.highlightsFileURL)
//    return TreeSitterLanguage(tree_sitter_regex(), highlightsQuery: highlightsQuery)
//  }()
//}
