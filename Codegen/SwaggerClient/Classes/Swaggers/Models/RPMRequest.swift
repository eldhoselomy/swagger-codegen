//
// CooeyAPIClient
// RPMRequest.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct RPMRequest: Codable {

    public var rpmbillStartedOn: Int64?
    public var rpmbillEndedOn: Int64?
    public var tenantId: String?
    public var reportFormat: String?
    public var patientIds: [String]?

    public init() {
    }

    public init(rpmbillStartedOn: Int64?, rpmbillEndedOn: Int64?, tenantId: String?, reportFormat: String?, patientIds: [String]?) {
        self.rpmbillStartedOn = rpmbillStartedOn
        self.rpmbillEndedOn = rpmbillEndedOn
        self.tenantId = tenantId
        self.reportFormat = reportFormat
        self.patientIds = patientIds
    }


}

