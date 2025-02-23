//
// CooeyAPIClient
// SuggestiosCreateRequest.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct SuggestiosCreateRequest: Codable {

    public enum ModelType: String, Codable { 
        case rpm = "RPM"
        case notes = "NOTES"
        case all = "ALL"
    }
    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var suggestion: String?
    public var type: ModelType?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, suggestion: String?, type: ModelType?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.suggestion = suggestion
        self.type = type
    }


}

