//
// CooeyAPIClient
// PagedResultPrescriptionResponseDTO.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct PagedResultPrescriptionResponseDTO: Codable {

    public var totalCount: Int64?
    public var offset: Int64?
    public var result: [PrescriptionResponseDTO]?
    public var totalPages: Int64?

    public init() {
    }

    public init(totalCount: Int64?, offset: Int64?, result: [PrescriptionResponseDTO]?, totalPages: Int64?) {
        self.totalCount = totalCount
        self.offset = offset
        self.result = result
        self.totalPages = totalPages
    }


}

