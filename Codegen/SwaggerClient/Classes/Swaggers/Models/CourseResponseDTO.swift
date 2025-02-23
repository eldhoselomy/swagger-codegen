//
// CooeyAPIClient
// CourseResponseDTO.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct CourseResponseDTO: Codable {

    public var id: String?
    public var name: String?
    public var type: String?
    public var tags: [String]?
    public var content: [CourseContent]?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var createdOn: Int64?
    public var updatedOn: Int64?

    public init() {
    }

    public init(id: String?, name: String?, type: String?, tags: [String]?, content: [CourseContent]?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, createdOn: Int64?, updatedOn: Int64?) {
        self.id = id
        self.name = name
        self.type = type
        self.tags = tags
        self.content = content
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.createdOn = createdOn
        self.updatedOn = updatedOn
    }


}

