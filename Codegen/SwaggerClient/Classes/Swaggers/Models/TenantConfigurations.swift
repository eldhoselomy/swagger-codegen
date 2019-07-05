//
// CooeyAPIClient
// TenantConfigurations.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct TenantConfigurations: Codable {

    public var tenantName: String?
    public var email: String?
    public var password: String?
    public var termsURL: String?
    public var tenantConfigRequired: Bool?
    public var vitalBlueprintRequired: Bool?

    public init() {
    }

    public init(tenantName: String?, email: String?, password: String?, termsURL: String?, tenantConfigRequired: Bool?, vitalBlueprintRequired: Bool?) {
        self.tenantName = tenantName
        self.email = email
        self.password = password
        self.termsURL = termsURL
        self.tenantConfigRequired = tenantConfigRequired
        self.vitalBlueprintRequired = vitalBlueprintRequired
    }


}

