//
// CooeyAPIClient
// Allergy.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Allergy: Codable {

    public enum Level: String, Codable { 
        case low = "LOW"
        case normal = "NORMAL"
        case high = "HIGH"
        case severe = "SEVERE"
    }
    public var name: String?
    public var level: Level?
    public var symptoms: [String]?

    public init() {
    }

    public init(name: String?, level: Level?, symptoms: [String]?) {
        self.name = name
        self.level = level
        self.symptoms = symptoms
    }


}

