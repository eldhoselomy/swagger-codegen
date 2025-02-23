//
// CooeyAPIClient
// TimeTrace.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct TimeTrace: Codable {

    public enum PaymentMode: String, Codable { 
        case creditCard = "CREDIT_CARD"
        case debitCard = "DEBIT_CARD"
        case cash = "CASH"
        case cheque = "CHEQUE"
    }
    public enum PaymentStatus: String, Codable { 
        case paid = "PAID"
        case notPaid = "NOT_PAID"
    }
    public var createdOn: Int64?
    public var updatedOn: Int64?
    public var tenantId: String?
    public var applicationId: String?
    public var archived: Bool?
    public var externalId: String?
    public var active: Bool?
    public var id: String?
    public var userId: String?
    public var patientId: String?
    public var paymentMode: PaymentMode?
    public var paymentStatus: PaymentStatus?
    public var paymentDate: Int64?
    public var swipeIn: Int64?
    public var swipeOut: Int64?
    public var actionItemIds: [String]?
    public var contextType: String?
    public var contextId: String?

    public init() {
    }

    public init(createdOn: Int64?, updatedOn: Int64?, tenantId: String?, applicationId: String?, archived: Bool?, externalId: String?, active: Bool?, id: String?, userId: String?, patientId: String?, paymentMode: PaymentMode?, paymentStatus: PaymentStatus?, paymentDate: Int64?, swipeIn: Int64?, swipeOut: Int64?, actionItemIds: [String]?, contextType: String?, contextId: String?) {
        self.createdOn = createdOn
        self.updatedOn = updatedOn
        self.tenantId = tenantId
        self.applicationId = applicationId
        self.archived = archived
        self.externalId = externalId
        self.active = active
        self.id = id
        self.userId = userId
        self.patientId = patientId
        self.paymentMode = paymentMode
        self.paymentStatus = paymentStatus
        self.paymentDate = paymentDate
        self.swipeIn = swipeIn
        self.swipeOut = swipeOut
        self.actionItemIds = actionItemIds
        self.contextType = contextType
        self.contextId = contextId
    }


}

