//
// CooeyAPIClient
// Intervention.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Intervention: Codable {

    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var id: String?
    public var name: String?
    public var type: String?
    public var parameters: String?
    public var parentId: String?
    public var careplanId: String?
    public var interventionBluprintId: String?
    public var patientId: String?
    public var assignedOn: Int64?
    public var schedule: OldScheduleModel?
    public var schedules: [Schedule]?
    public var permissions: String?
    public var caretakerId: String?
    public var caretakerName: String?
    public var caretakerNotificationEnabled: Bool?
    public var patientNotificationEnabled: Bool?
    public var guaridanNotificationEnabled: Bool?
    public var reviewResponseEnabled: Bool?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, id: String?, name: String?, type: String?, parameters: String?, parentId: String?, careplanId: String?, interventionBluprintId: String?, patientId: String?, assignedOn: Int64?, schedule: OldScheduleModel?, schedules: [Schedule]?, permissions: String?, caretakerId: String?, caretakerName: String?, caretakerNotificationEnabled: Bool?, patientNotificationEnabled: Bool?, guaridanNotificationEnabled: Bool?, reviewResponseEnabled: Bool?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.id = id
        self.name = name
        self.type = type
        self.parameters = parameters
        self.parentId = parentId
        self.careplanId = careplanId
        self.interventionBluprintId = interventionBluprintId
        self.patientId = patientId
        self.assignedOn = assignedOn
        self.schedule = schedule
        self.schedules = schedules
        self.permissions = permissions
        self.caretakerId = caretakerId
        self.caretakerName = caretakerName
        self.caretakerNotificationEnabled = caretakerNotificationEnabled
        self.patientNotificationEnabled = patientNotificationEnabled
        self.guaridanNotificationEnabled = guaridanNotificationEnabled
        self.reviewResponseEnabled = reviewResponseEnabled
    }


}

