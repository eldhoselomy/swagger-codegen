//
// CooeyAPIClient
// Group.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Group: Codable {

    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var id: String?
    public var name: String?
    public var _description: String?
    public var type: String?
    public var parameters: String?
    public var parentId: String?
    public var dietTemplate: DietTemplate?
    public var status: String?
    public var companyRegistrationNo: String?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, id: String?, name: String?, _description: String?, type: String?, parameters: String?, parentId: String?, dietTemplate: DietTemplate?, status: String?, companyRegistrationNo: String?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.id = id
        self.name = name
        self._description = _description
        self.type = type
        self.parameters = parameters
        self.parentId = parentId
        self.dietTemplate = dietTemplate
        self.status = status
        self.companyRegistrationNo = companyRegistrationNo
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
        case _description = "description"
        case type
        case parameters
        case parentId
        case dietTemplate
        case status
        case companyRegistrationNo
    }


}

