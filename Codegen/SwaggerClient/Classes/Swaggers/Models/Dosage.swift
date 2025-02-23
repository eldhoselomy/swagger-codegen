//
// CooeyAPIClient
// Dosage.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Dosage: Codable {

    public enum ModelType: String, Codable { 
        case tablet = "TABLET"
        case capsule = "CAPSULE"
        case syrup = "SYRUP"
        case cream = "CREAM"
        case ointment = "OINTMENT"
        case spray = "SPRAY"
        case injection = "INJECTION"
    }
    public var type: ModelType?
    public var unit: String?
    public var quantity: String?
    public var schedule: Schedule?

    public init() {
    }

    public init(type: ModelType?, unit: String?, quantity: String?, schedule: Schedule?) {
        self.type = type
        self.unit = unit
        self.quantity = quantity
        self.schedule = schedule
    }


}

