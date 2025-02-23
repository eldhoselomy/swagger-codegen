//
// CooeyAPIClient
// DeviceConfig.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct DeviceConfig: Codable {

    public enum ModelType: String, Codable { 
        case cooey = "COOEY"
        case anD = "AnD"
        case ihealth = "IHEALTH"
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

