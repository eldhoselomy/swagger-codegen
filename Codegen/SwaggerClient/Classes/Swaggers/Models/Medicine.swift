//
// CooeyAPIClient
// Medicine.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Medicine: Codable {

    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var id: String?
    public var name: String?
    public var source: String?
    public var _description: String?
    public var components: [Component]?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, id: String?, name: String?, source: String?, _description: String?, components: [Component]?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.id = id
        self.name = name
        self.source = source
        self._description = _description
        self.components = components
    }

    public enum CodingKeys: String, CodingKey { 
        case createdOn
        case updatedOn
        case tenantId
        case applicationId
        case archived
        case externalId
        case active
        case id
        case name
        case source
        case _description = "description"
        case components
    }


}

