//
// CooeyAPIClient
// DiagnosisCodeResponseDTO.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct DiagnosisCodeResponseDTO: Codable {

    public var id: String?
    public var _description: String?
    public var category: String?

    public init() {
    }

    public init(id: String?, _description: String?, category: String?) {
        self.id = id
        self._description = _description
        self.category = category
    }

    public enum CodingKeys: String, CodingKey { 
        case id
        case _description = "description"
        case category
    }


}

