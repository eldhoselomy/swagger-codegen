//
// CooeyAPIClient
// ExcelStatus.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct ExcelStatus: Codable {

    public var fileName: String?
    public var status: String?

    public init() {
    }

    public init(fileName: String?, status: String?) {
        self.fileName = fileName
        self.status = status
    }


}

