//
// CooeyAPIClient
// Artifact.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Artifact: Codable {

    public enum Platform: String, Codable { 
        case android = "ANDROID"
        case iphone = "IPHONE"
        case web = "WEB"
    }
    public enum Status: String, Codable { 
        case pending = "PENDING"
        case codeCloned = "CODE_CLONED"
        case apkGenerated = "APK_GENERATED"
        case completed = "COMPLETED"
    }
    public enum AccountType: String, Codable { 
        case patient = "PATIENT"
        case tenant = "TENANT"
        case guardian = "GUARDIAN"
        case admin = "ADMIN"
        case careTaker = "CARE_TAKER"
        case user = "USER"
        case groupAdmin = "GROUP_ADMIN"
        case tenantAdmin = "TENANT_ADMIN"
    }
    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var id: String?
    public var platform: Platform?
    public var status: Status?
    public var url: String?
    public var version: String?
    public var changes: String?
    public var accountType: AccountType?
    public var published: Bool?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, id: String?, platform: Platform?, status: Status?, url: String?, version: String?, changes: String?, accountType: AccountType?, published: Bool?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.id = id
        self.platform = platform
        self.status = status
        self.url = url
        self.version = version
        self.changes = changes
        self.accountType = accountType
        self.published = published
    }


}

