//
// CooeyAPIClient
// PrescriptionCreateRequest.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct PrescriptionCreateRequest: Codable {

    public var createdOn: Int64?
    public var createdBy: String?
    public var medicines: [UserMedicine]?
    public var patientId: String?

    public init() {
    }

    public init(createdOn: Int64?, createdBy: String?, medicines: [UserMedicine]?, patientId: String?) {
        self.createdOn = createdOn
        self.createdBy = createdBy
        self.medicines = medicines
        self.patientId = patientId
    }


}

