//
// CooeyAPIClient
// DynamicUserFormRelation.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct DynamicUserFormRelation: Codable {

    public enum OwnerType: String, Codable { 
        case tenant = "TENANT"
        case admin = "ADMIN"
        case careTaker = "CARE_TAKER"
        case patient = "PATIENT"
        case guardian = "GUARDIAN"
        case global = "GLOBAL"
    }
    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var ownerType: OwnerType?
    public var ownerId: String?
    public var id: String?
    public var form: Form?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, ownerType: OwnerType?, ownerId: String?, id: String?, form: Form?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.ownerType = ownerType
        self.ownerId = ownerId
        self.id = id
        self.form = form
    }


}

