//
// CooeyAPIClient
// LineOfBusiness.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct LineOfBusiness: Codable {

    public var shortDesc: String?
    public var longDesc: String?

    public init() {
    }

    public init(shortDesc: String?, longDesc: String?) {
        self.shortDesc = shortDesc
        self.longDesc = longDesc
    }


}

