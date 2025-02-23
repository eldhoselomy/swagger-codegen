//
// CooeyAPIClient
// Change.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Change: Codable {

    public enum EntityType: String, Codable { 
        case appointment = "APPOINTMENT"
        case actionItem = "ACTION_ITEM"
        case careplan = "CAREPLAN"
        case intervention = "INTERVENTION"
        case episode = "EPISODE"
    }
    public var id: String?
    public var entityId: String?
    public var name: String?
    public var entityType: EntityType?
    public var propertyChanges: [PropertyChange]?
    public var reason: String?
    public var changeJson: String?
    public var createdOn: Int64?
    public var updatedOn: Int64?

    public init() {
    }

    public init(id: String?, entityId: String?, name: String?, entityType: EntityType?, propertyChanges: [PropertyChange]?, reason: String?, changeJson: String?, createdOn: Int64?, updatedOn: Int64?) {
        self.id = id
        self.entityId = entityId
        self.name = name
        self.entityType = entityType
        self.propertyChanges = propertyChanges
        self.reason = reason
        self.changeJson = changeJson
        self.createdOn = createdOn
        self.updatedOn = updatedOn
    }


}

