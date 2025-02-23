//
// CooeyAPIClient
// ReportConfig.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct ReportConfig: Codable {

    public enum ModelType: String, Codable { 
        case careplanReport = "CAREPLAN_REPORT"
        case abpmReport = "ABPM_REPORT"
    }
    public var type: ModelType?
    public var enabled: Bool?

    public init() {
    }

    public init(type: ModelType?, enabled: Bool?) {
        self.type = type
        self.enabled = enabled
    }


}

