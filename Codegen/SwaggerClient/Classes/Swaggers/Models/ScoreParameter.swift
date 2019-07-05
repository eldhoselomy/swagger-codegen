//
// CooeyAPIClient
// ScoreParameter.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct ScoreParameter: Codable {

    public var prompt: String?
    public var name: String?
    public var value: String?
    public var type: String?
    public var measuredOn: Int64?
    public var mandatory: Bool?

    public init() {
    }

    public init(prompt: String?, name: String?, value: String?, type: String?, measuredOn: Int64?, mandatory: Bool?) {
        self.prompt = prompt
        self.name = name
        self.value = value
        self.type = type
        self.measuredOn = measuredOn
        self.mandatory = mandatory
    }


}

