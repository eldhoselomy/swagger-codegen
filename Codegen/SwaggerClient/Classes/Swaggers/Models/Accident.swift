//
// CooeyAPIClient
// Accident.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Accident: Codable {

    public var met: Bool?
    public var _description: String?

    public init() {
    }

    public init(met: Bool, _description: String?) {
        self.met = met
        self._description = _description
    }

    public enum CodingKeys: String, CodingKey { 
        case met
        case _description = "description"
    }


}

