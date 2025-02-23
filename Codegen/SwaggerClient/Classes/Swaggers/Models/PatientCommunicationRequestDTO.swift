//
// CooeyAPIClient
// PatientCommunicationRequestDTO.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct PatientCommunicationRequestDTO: Codable {

    public enum Mode: String, Codable { 
        case call = "CALL"
        case videoCall = "VIDEO_CALL"
    }
    public var episodeId: String?
    public var caretakerId: String?
    public var patientId: String?
    public var date: Int64?
    public var startTime: Int64?
    public var endTime: Int64?
    public var notes: String?
    public var mode: Mode?
    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var archived: Bool?
    public var assignerId: String?
    public var reason: String?

    public init() {
    }

    public init(episodeId: String?, caretakerId: String?, patientId: String?, date: Int64?, startTime: Int64, endTime: Int64, notes: String?, mode: Mode, createdOn: Int64?, updatedOn: Int64?, tenantId: String?, archived: Bool?, assignerId: String?, reason: String?) {
        self.episodeId = episodeId
        self.caretakerId = caretakerId
        self.patientId = patientId
        self.date = date
        self.startTime = startTime
        self.endTime = endTime
        self.notes = notes
        self.mode = mode
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.archived = archived
        self.assignerId = assignerId
        self.reason = reason
    }


}

