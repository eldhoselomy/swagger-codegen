//
// CooeyAPIClient
// GroupedActionItemResponse.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct GroupedActionItemResponse: Codable {

    public var groupName: String?
    public var actionItems: [ActionItem]?

    public init() {
    }

    public init(groupName: String?, actionItems: [ActionItem]?) {
        self.groupName = groupName
        self.actionItems = actionItems
    }


}

