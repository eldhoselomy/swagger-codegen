//
// CooeyAPIClient
// PrelimAssesment.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct PrelimAssesment: Codable {

    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var id: String?
    public var assesmentForm: Form?
    public var patientId: String?
    public var carriedBy: String?
    public var assesmentDate: Int64?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, id: String?, assesmentForm: Form?, patientId: String?, carriedBy: String?, assesmentDate: Int64?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.id = id
        self.assesmentForm = assesmentForm
        self.patientId = patientId
        self.carriedBy = carriedBy
        self.assesmentDate = assesmentDate
    }


}

