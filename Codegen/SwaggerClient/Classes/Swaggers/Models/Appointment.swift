//
// CooeyAPIClient
// Appointment.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Appointment: Codable {

    public enum OverallStatus: String, Codable { 
        case pending = "PENDING"
        case rejected = "REJECTED"
        case approved = "APPROVED"
        case deleted = "DELETED"
        case finished = "FINISHED"
        case all = "ALL"
    }
    public enum OwnerType: String, Codable { 
        case patient = "PATIENT"
        case tenant = "TENANT"
        case guardian = "GUARDIAN"
        case admin = "ADMIN"
        case careTaker = "CARE_TAKER"
        case user = "USER"
        case groupAdmin = "GROUP_ADMIN"
        case tenantAdmin = "TENANT_ADMIN"
    }
    public enum ModelType: String, Codable { 
        case home = "HOME"
        case hospital = "HOSPITAL"
        case remote = "REMOTE"
        case referral = "REFERRAL"
    }
    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var id: String?
    public var title: String?
    public var _description: String?
    public var attenderName: String?
    public var attendeeName: String?
    public var serviceIds: [String]?
    public var schedule: Schedule?
    public var overallStatus: OverallStatus?
    public var createdBy: String?
    public var attenderId: String?
    public var attendeeId: String?
    public var noteId: String?
    public var ownerId: String?
    public var completionFormUrl: String?
    public var completedBy: String?
    public var completedOn: Int64?
    public var ownerType: OwnerType?
    public var appointmentRequestId: String?
    public var chatSessionId: String?
    public var offerings: [Product]?
    public var serviceCategory: String?
    public var service: String?
    public var reason: String?
    public var type: ModelType?
    public var episodeId: String?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, id: String?, title: String?, _description: String?, attenderName: String?, attendeeName: String?, serviceIds: [String]?, schedule: Schedule?, overallStatus: OverallStatus?, createdBy: String?, attenderId: String?, attendeeId: String?, noteId: String?, ownerId: String?, completionFormUrl: String?, completedBy: String?, completedOn: Int64?, ownerType: OwnerType?, appointmentRequestId: String?, chatSessionId: String?, offerings: [Product]?, serviceCategory: String?, service: String?, reason: String?, type: ModelType?, episodeId: String?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.id = id
        self.title = title
        self._description = _description
        self.attenderName = attenderName
        self.attendeeName = attendeeName
        self.serviceIds = serviceIds
        self.schedule = schedule
        self.overallStatus = overallStatus
        self.createdBy = createdBy
        self.attenderId = attenderId
        self.attendeeId = attendeeId
        self.noteId = noteId
        self.ownerId = ownerId
        self.completionFormUrl = completionFormUrl
        self.completedBy = completedBy
        self.completedOn = completedOn
        self.ownerType = ownerType
        self.appointmentRequestId = appointmentRequestId
        self.chatSessionId = chatSessionId
        self.offerings = offerings
        self.serviceCategory = serviceCategory
        self.service = service
        self.reason = reason
        self.type = type
        self.episodeId = episodeId
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
        case title
        case _description = "description"
        case attenderName
        case attendeeName
        case serviceIds
        case schedule
        case overallStatus
        case createdBy
        case attenderId
        case attendeeId
        case noteId
        case ownerId
        case completionFormUrl
        case completedBy
        case completedOn
        case ownerType
        case appointmentRequestId
        case chatSessionId
        case offerings
        case serviceCategory
        case service
        case reason
        case type
        case episodeId
    }


}

