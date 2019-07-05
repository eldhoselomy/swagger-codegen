//
// CooeyAPIClient
// ActionItemAndCaretakerNameResponse.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct ActionItemAndCaretakerNameResponse: Codable {

    public var actionItems: [ActionItem]?
    public var caretakerIdNameMapper: [String:String]?

    public init() {
    }

    public init(actionItems: [ActionItem]?, caretakerIdNameMapper: [String:String]?) {
        self.actionItems = actionItems
        self.caretakerIdNameMapper = caretakerIdNameMapper
    }


}

