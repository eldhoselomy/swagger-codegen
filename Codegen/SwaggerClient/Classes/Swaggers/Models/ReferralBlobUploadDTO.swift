//
// CooeyAPIClient
// ReferralBlobUploadDTO.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct ReferralBlobUploadDTO: Codable {

    public var referralFileDocuments: [BlobStorageDocument]?

    public init() {
    }

    public init(referralFileDocuments: [BlobStorageDocument]?) {
        self.referralFileDocuments = referralFileDocuments
    }


}

