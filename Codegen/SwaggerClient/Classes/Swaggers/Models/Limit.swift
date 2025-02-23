//
// CooeyAPIClient
// Limit.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Limit: Codable {

    public var lowerLimit: Float?
    public var higherLimit: Float?
    public var limitType: String?

    public init() {
    }

    public init(lowerLimit: Float?, higherLimit: Float?, limitType: String?) {
        self.lowerLimit = lowerLimit
        self.higherLimit = higherLimit
        self.limitType = limitType
    }


}

