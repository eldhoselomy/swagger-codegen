//
// CooeyAPIClient
// PagedResultFactResponse.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct PagedResultFactResponse: Codable {

    public var totalCount: Int64?
    public var offset: Int64?
    public var result: [FactResponse]?

    public init() {
    }

    public init(totalCount: Int64?, offset: Int64?, result: [FactResponse]?) {
        self.totalCount = totalCount
        self.offset = offset
        self.result = result
    }


}

