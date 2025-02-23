//
// CooeyAPIClient
// UserMedicinesResponse.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct UserMedicinesResponse: Codable {

    public var medInfo: UserMedicine?
    public var adherenceReport: MedicineAdherence?
    public var assignerName: String?

    public init() {
    }

    public init(medInfo: UserMedicine?, adherenceReport: MedicineAdherence?, assignerName: String?) {
        self.medInfo = medInfo
        self.adherenceReport = adherenceReport
        self.assignerName = assignerName
    }


}

