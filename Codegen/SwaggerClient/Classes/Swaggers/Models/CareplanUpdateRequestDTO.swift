//
// CooeyAPIClient
// CareplanUpdateRequestDTO.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct CareplanUpdateRequestDTO: Codable {

    public var careplanId: String?
    public var patientId: String?
    public var careplanStartTime: Int64?
    public var careplanEndTime: Int64?
    public var assignedOn: Int64?
    public var assignerId: String?
    public var careplanTitle: String?
    public var reasonForChange: String?
    public var careplanBlueprint: CareplanBlueprint?
    public var removedInterventions: [String]?
    public var addedInterventions: [InterventionBluePrintRequest]?
    public var modifiedInterventions: [InterventionRequestDTO]?

    public init() {
    }

    public init(careplanId: String?, patientId: String, careplanStartTime: Int64?, careplanEndTime: Int64?, assignedOn: Int64?, assignerId: String, careplanTitle: String?, reasonForChange: String?, careplanBlueprint: CareplanBlueprint, removedInterventions: [String]?, addedInterventions: [InterventionBluePrintRequest]?, modifiedInterventions: [InterventionRequestDTO]?) {
        self.careplanId = careplanId
        self.patientId = patientId
        self.careplanStartTime = careplanStartTime
        self.careplanEndTime = careplanEndTime
        self.assignedOn = assignedOn
        self.assignerId = assignerId
        self.careplanTitle = careplanTitle
        self.reasonForChange = reasonForChange
        self.careplanBlueprint = careplanBlueprint
        self.removedInterventions = removedInterventions
        self.addedInterventions = addedInterventions
        self.modifiedInterventions = modifiedInterventions
    }


}

