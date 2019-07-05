//
// CooeyAPIClient
// ColorConfiguration.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct ColorConfiguration: Codable {

    public var primaryColor: String?
    public var primaryDarkColor: String?
    public var secondaryColor: String?
    public var secondaryDarkColor: String?
    public var textColor: String?
    public var backgroundColor: String?

    public init() {
    }

    public init(primaryColor: String?, primaryDarkColor: String?, secondaryColor: String?, secondaryDarkColor: String?, textColor: String?, backgroundColor: String?) {
        self.primaryColor = primaryColor
        self.primaryDarkColor = primaryDarkColor
        self.secondaryColor = secondaryColor
        self.secondaryDarkColor = secondaryDarkColor
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }


}

