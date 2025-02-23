//
// CooeyAPIClient
// UserEventRelation.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct UserEventRelation: Codable {

    public var id: String?
    public var userId: String?
    public var eventId: String?
    public var start: Int64?
    public var end: Int64?

    public init() {
    }

    public init(id: String?, userId: String?, eventId: String?, start: Int64?, end: Int64?) {
        self.id = id
        self.userId = userId
        self.eventId = eventId
        self.start = start
        self.end = end
    }


}

