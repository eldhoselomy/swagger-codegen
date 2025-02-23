//
// CooeyAPIClient
// Field.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Field: Codable {

    public enum DataType: String, Codable { 
        case integer = "INTEGER"
        case decimal = "DECIMAL"
        case string = "STRING"
    }
    public var label: String?
    public var unit: String?
    public var dataType: DataType?
    public var type: String?
    public var vitalValidations: VitalValidations?
    public var stakeholdersForNotification: [String]?
    public var actuations: [Actuation]?
    public var key: String?
    public var graphRequired: Bool?

    public init() {
    }

    public init(label: String?, unit: String?, dataType: DataType?, type: String?, vitalValidations: VitalValidations?, stakeholdersForNotification: [String]?, actuations: [Actuation]?, key: String?, graphRequired: Bool?) {
        self.label = label
        self.unit = unit
        self.dataType = dataType
        self.type = type
        self.vitalValidations = vitalValidations
        self.stakeholdersForNotification = stakeholdersForNotification
        self.actuations = actuations
        self.key = key
        self.graphRequired = graphRequired
    }


}

