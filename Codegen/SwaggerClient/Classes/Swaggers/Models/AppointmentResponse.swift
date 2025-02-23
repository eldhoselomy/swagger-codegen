//
// CooeyAPIClient
// AppointmentResponse.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct AppointmentResponse: Codable {

    public var appointment: Appointment?
    public var serviceNames: [String]?
    public var interventionList: [Intervention]?

    public init() {
    }

    public init(appointment: Appointment?, serviceNames: [String]?, interventionList: [Intervention]?) {
        self.appointment = appointment
        self.serviceNames = serviceNames
        self.interventionList = interventionList
    }


}

