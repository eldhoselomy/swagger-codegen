//
// CooeyAPIClient
// Address.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Address: Codable {

    public var line1: String?
    public var line2: String?
    public var lat: String?
    public var lng: String?
    public var zipCode: String?
    public var city: String?
    public var state: String?
    public var country: String?
    public var pin: String?
    public var location: String?

    public init() {
    }

    public init(line1: String?, line2: String?, lat: String?, lng: String?, zipCode: String?, city: String?, state: String?, country: String?, pin: String?, location: String?) {
        self.line1 = line1
        self.line2 = line2
        self.lat = lat
        self.lng = lng
        self.zipCode = zipCode
        self.city = city
        self.state = state
        self.country = country
        self.pin = pin
        self.location = location
    }


}

