//
// CooeyAPIClient
// ExternalRepositoryConfigurarion.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct ExternalRepositoryConfigurarion: Codable {

    public enum ExternalRepositoryType: String, Codable { 
        case kantime = "KANTIME"
        case pointClickCare = "POINT_CLICK_CARE"
    }
    public var externalRepositoryType: ExternalRepositoryType?
    public var parameters: String?
    public var isEnabled: String?

    public init() {
    }

    public init(externalRepositoryType: ExternalRepositoryType?, parameters: String?, isEnabled: String?) {
        self.externalRepositoryType = externalRepositoryType
        self.parameters = parameters
        self.isEnabled = isEnabled
    }


}

