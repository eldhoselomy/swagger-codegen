//
// CooeyAPIClient
// CaretakerDietTemplate.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct CaretakerDietTemplate: Codable {

    public var dietTemplate: DietTemplate?
    public var userIds: [String]?
    public var tagList: [String:String]?

    public init() {
    }

    public init(dietTemplate: DietTemplate?, userIds: [String]?, tagList: [String:String]?) {
        self.dietTemplate = dietTemplate
        self.userIds = userIds
        self.tagList = tagList
    }


}

