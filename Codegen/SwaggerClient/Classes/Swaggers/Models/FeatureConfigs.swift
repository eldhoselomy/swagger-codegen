//
// CooeyAPIClient
// FeatureConfigs.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct FeatureConfigs: Codable {

    public enum CareplanType: String, Codable { 
        case rpm = "RPM"
        case general = "GENERAL"
        case hha = "HHA"
    }
    public var patientReferralEnabled: Bool?
    public var vitalsEnabled: Bool?
    public var devicesEnabled: Bool?
    public var agenciesEnabled: Bool?
    public var healthScoreEnabled: Bool?
    public var patientSummaryEnabled: Bool?
    public var medicinesEnabled: Bool?
    public var medicalReportEnabled: Bool?
    public var medicalProfileEnabled: Bool?
    public var chatEnabled: Bool?
    public var videoCallEnabled: Bool?
    public var leadsEnabled: Bool?
    public var careplanType: CareplanType?
    public var addPatientFromCaretaker: Bool?
    public var patientsModule: PatientsModule?

    public init() {
    }

    public init(patientReferralEnabled: Bool?, vitalsEnabled: Bool?, devicesEnabled: Bool?, agenciesEnabled: Bool?, healthScoreEnabled: Bool?, patientSummaryEnabled: Bool?, medicinesEnabled: Bool?, medicalReportEnabled: Bool?, medicalProfileEnabled: Bool?, chatEnabled: Bool?, videoCallEnabled: Bool?, leadsEnabled: Bool?, careplanType: CareplanType?, addPatientFromCaretaker: Bool?, patientsModule: PatientsModule?) {
        self.patientReferralEnabled = patientReferralEnabled
        self.vitalsEnabled = vitalsEnabled
        self.devicesEnabled = devicesEnabled
        self.agenciesEnabled = agenciesEnabled
        self.healthScoreEnabled = healthScoreEnabled
        self.patientSummaryEnabled = patientSummaryEnabled
        self.medicinesEnabled = medicinesEnabled
        self.medicalReportEnabled = medicalReportEnabled
        self.medicalProfileEnabled = medicalProfileEnabled
        self.chatEnabled = chatEnabled
        self.videoCallEnabled = videoCallEnabled
        self.leadsEnabled = leadsEnabled
        self.careplanType = careplanType
        self.addPatientFromCaretaker = addPatientFromCaretaker
        self.patientsModule = patientsModule
    }


}

