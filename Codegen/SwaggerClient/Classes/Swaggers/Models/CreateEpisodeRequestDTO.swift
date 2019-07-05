//
// CooeyAPIClient
// CreateEpisodeRequestDTO.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct CreateEpisodeRequestDTO: Codable {

    public enum EpisodeType: String, Codable { 
        case rpm = "RPM"
        case homeAide = "HOME_AIDE"
        case general = "GENERAL"
    }
    public enum Status: String, Codable { 
        case completed = "COMPLETED"
        case suspended = "SUSPENDED"
        case paused = "PAUSED"
        case inProgress = "IN_PROGRESS"
        case pendingStart = "PENDING_START"
    }
    public var patientId: String?
    public var startTime: Int64?
    public var endTime: Int64?
    public var careplanId: String?
    public var episodeType: EpisodeType?
    public var properties: [String:String]?
    public var icdCodeList: [Code]?
    public var cptCodeList: [Code]?
    public var insuranceInformation: EpisodeInsuranceInformation?
    public var consentFiles: [String]?
    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var archived: Bool?
    public var active: Bool?
    public var reason: String?
    public var assignerId: String?
    public var status: Status?
    public var deviceModels: [String]?
    public var noteId: String?

    public init() {
    }

    public init(patientId: String?, startTime: Int64, endTime: Int64, careplanId: String?, episodeType: EpisodeType, properties: [String:String]?, icdCodeList: [Code], cptCodeList: [Code], insuranceInformation: EpisodeInsuranceInformation, consentFiles: [String]?, createdOn: Int64?, updatedOn: Int64?, tenantId: String?, archived: Bool?, active: Bool?, reason: String?, assignerId: String?, status: Status?, deviceModels: [String]?, noteId: String?) {
        self.patientId = patientId
        self.startTime = startTime
        self.endTime = endTime
        self.careplanId = careplanId
        self.episodeType = episodeType
        self.properties = properties
        self.icdCodeList = icdCodeList
        self.cptCodeList = cptCodeList
        self.insuranceInformation = insuranceInformation
        self.consentFiles = consentFiles
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.archived = archived
        self.active = active
        self.reason = reason
        self.assignerId = assignerId
        self.status = status
        self.deviceModels = deviceModels
        self.noteId = noteId
    }


}

