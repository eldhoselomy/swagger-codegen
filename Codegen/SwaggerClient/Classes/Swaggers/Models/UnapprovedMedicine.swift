//
// CooeyAPIClient
// UnapprovedMedicine.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct UnapprovedMedicine: Codable {

    public enum State: String, Codable { 
        case pending = "PENDING"
        case approved = "APPROVED"
        case rejected = "REJECTED"
    }
    public var id: String?
    public var name: String?
    public var tenantId: String?
    public var createdOn: Int64?
    public var state: State?
    public var baseComponents: [String]?
    public var source: String?
    public var accepted: Bool?

    public init() {
    }

    public init(id: String?, name: String?, tenantId: String?, createdOn: Int64?, state: State?, baseComponents: [String]?, source: String?, accepted: Bool?) {
        self.id = id
        self.name = name
        self.tenantId = tenantId
        self.createdOn = createdOn
        self.state = state
        self.baseComponents = baseComponents
        self.source = source
        self.accepted = accepted
    }


}

