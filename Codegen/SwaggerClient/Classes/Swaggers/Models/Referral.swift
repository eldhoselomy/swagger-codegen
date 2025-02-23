//
// CooeyAPIClient
// Referral.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct Referral: Codable {

    public enum Gender: String, Codable { 
        case male = "MALE"
        case female = "FEMALE"
        case others = "OTHERS"
    }
    public enum Status: String, Codable { 
        case prelimPending = "PRELIM_PENDING"
        case prelimFinished = "PRELIM_FINISHED"
        case preauthPending = "PREAUTH_PENDING"
        case preauthFinished = "PREAUTH_FINISHED"
        case rejected = "REJECTED"
        case accepted = "ACCEPTED"
        case archived = "ARCHIVED"
    }
    public var firstName: CharSequence?
    public var middleName: CharSequence?
    public var lastName: CharSequence?
    public var gender: Gender?
    public var medicalRecord: CharSequence?
    public var dateOfBirth: CharSequence?
    public var mobile: CharSequence?
    public var ssn: CharSequence?
    public var authNumber: CharSequence?
    public var email: CharSequence?
    public var id: String?
    public var countryCode: String?
    public var address: Address?
    public var referralProvider: ReferralProvider?
    public var icdCodes: [String]?
    public var patientCondition: PatientCondition?
    public var insured: Bool?
    public var insuranceInformation: InsuranceInformation?
    public var referralDocuments: [BlobStorageDocument]?
    public var preAuthDocuments: [BlobStorageDocument]?
    public var prelimForms: [String]?
    public var evaluationForms: [String]?
    public var status: Status?
    public var responsibilityId: String?
    public var timeZone: String?
    public var tenantId: String?
    public var archived: Bool?
    public var active: Bool?
    public var createdOn: Int64?
    public var updatedOn: Int64?

    public init() {
    }

    public init(firstName: CharSequence?, middleName: CharSequence?, lastName: CharSequence?, gender: Gender?, medicalRecord: CharSequence?, dateOfBirth: CharSequence?, mobile: CharSequence?, ssn: CharSequence?, authNumber: CharSequence?, email: CharSequence?, id: String?, countryCode: String?, address: Address?, referralProvider: ReferralProvider?, icdCodes: [String]?, patientCondition: PatientCondition?, insured: Bool?, insuranceInformation: InsuranceInformation?, referralDocuments: [BlobStorageDocument]?, preAuthDocuments: [BlobStorageDocument]?, prelimForms: [String]?, evaluationForms: [String]?, status: Status?, responsibilityId: String?, timeZone: String?, tenantId: String?, archived: Bool?, active: Bool?, createdOn: Int64?, updatedOn: Int64?) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
        self.gender = gender
        self.medicalRecord = medicalRecord
        self.dateOfBirth = dateOfBirth
        self.mobile = mobile
        self.ssn = ssn
        self.authNumber = authNumber
        self.email = email
        self.id = id
        self.countryCode = countryCode
        self.address = address
        self.referralProvider = referralProvider
        self.icdCodes = icdCodes
        self.patientCondition = patientCondition
        self.insured = insured
        self.insuranceInformation = insuranceInformation
        self.referralDocuments = referralDocuments
        self.preAuthDocuments = preAuthDocuments
        self.prelimForms = prelimForms
        self.evaluationForms = evaluationForms
        self.status = status
        self.responsibilityId = responsibilityId
        self.timeZone = timeZone
        self.tenantId = tenantId
        self.archived = archived
        self.active = active
        self.createdOn = createdOn
        self.updatedOn = updatedOn
    }


}

