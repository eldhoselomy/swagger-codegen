//
// CooeyAPIClient
// TenantBlueprintRequestDTO.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct TenantBlueprintRequestDTO: Codable {

    public var id: String?
    public var name: String?
    public var vitalBlueprints: [VitalBlueprint]?
    public var interventionBlueprints: [InterventionBlueprint]?
    public var tenantConfig: TenantConfig?
    public var archived: Bool?

    public init() {
    }

    public init(id: String?, name: String?, vitalBlueprints: [VitalBlueprint]?, interventionBlueprints: [InterventionBlueprint]?, tenantConfig: TenantConfig?, archived: Bool?) {
        self.id = id
        self.name = name
        self.vitalBlueprints = vitalBlueprints
        self.interventionBlueprints = interventionBlueprints
        self.tenantConfig = tenantConfig
        self.archived = archived
    }


}

