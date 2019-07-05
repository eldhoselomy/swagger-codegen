//
// CooeyAPIClient
// DashboardStats.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct DashboardStats: Codable {

    public var caretakerCount: Int?
    public var patientCount: Int?
    public var patientWithoutCaretakerCount: Int?
    public var deviceCount: Int?
    public var zoneCount: Int?
    public var engagementCount: Int?
    public var unapprovedMedicineCount: Int?
    public var formsCount: Int?
    public var productsCount: Int?
    public var unapprovedAppoinmentCount: Int?
    public var leadsCount: Int?

    public init() {
    }

    public init(caretakerCount: Int?, patientCount: Int?, patientWithoutCaretakerCount: Int?, deviceCount: Int?, zoneCount: Int?, engagementCount: Int?, unapprovedMedicineCount: Int?, formsCount: Int?, productsCount: Int?, unapprovedAppoinmentCount: Int?, leadsCount: Int?) {
        self.caretakerCount = caretakerCount
        self.patientCount = patientCount
        self.patientWithoutCaretakerCount = patientWithoutCaretakerCount
        self.deviceCount = deviceCount
        self.zoneCount = zoneCount
        self.engagementCount = engagementCount
        self.unapprovedMedicineCount = unapprovedMedicineCount
        self.formsCount = formsCount
        self.productsCount = productsCount
        self.unapprovedAppoinmentCount = unapprovedAppoinmentCount
        self.leadsCount = leadsCount
    }


}

