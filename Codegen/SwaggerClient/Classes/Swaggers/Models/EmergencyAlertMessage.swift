//
// CooeyAPIClient
// EmergencyAlertMessage.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct EmergencyAlertMessage: Codable {

    public enum CommandId: String, Codable { 
        case authorize = "AUTHORIZE"
        case unidentified = "UNIDENTIFIED"
        case trackingAlert = "TRACKING_ALERT"
        case generalReport = "GENERAL_REPORT"
        case geofencingAlert = "GEOFENCING_ALERT"
        case alert = "ALERT"
    }
    public enum CommandExtension: String, Codable { 
        case _none = "NONE"
        case emergencyAlertRpt = "EMERGENCY_ALERT_RPT"
        case temperatureAlertRpt = "TEMPERATURE_ALERT_RPT"
        case shockAlertRpt = "SHOCK_ALERT_RPT"
        case lowMovmentAlertPrt = "LOW_MOVMENT_ALERT_PRT"
        case devicePowerOnReport = "DEVICE_POWER_ON_REPORT"
        case devicePowerOffReport = "DEVICE_POWER_OFF_REPORT"
        case hazardousMovementAlertRpt = "HAZARDOUS_MOVEMENT_ALERT_RPT"
        case lowBatteryAlertRpt = "LOW_BATTERY_ALERT_RPT"
        case fullBatteryAlertRpt = "FULL_BATTERY_ALERT_RPT"
        case trackingAlertRpt = "TRACKING_ALERT_RPT"
        case geofencingAlert = "GEOFENCING_ALERT"
    }
    public enum Command: String, Codable { 
        case authorize = "AUTHORIZE"
        case unidentified = "UNIDENTIFIED"
        case trackingAlert = "TRACKING_ALERT"
        case generalReport = "GENERAL_REPORT"
        case geofencingAlert = "GEOFENCING_ALERT"
        case alert = "ALERT"
    }
    public var id: String?
    public var payloadSize: Int?
    public var commandId: CommandId?
    public var commandExtension: CommandExtension?
    public var fullMessage: String?
    public var deviceId: String?
    public var createdOn: Date?
    public var timestamp: Int64?
    public var latitude: Double?
    public var longitude: Double?
    public var heading: String?
    public var altitude: String?
    public var assistedGPS: String?
    public var gpsSpeed: String?
    public var horizontalUncertainity: String?
    public var perpendicularUncertainity: String?
    public var horizontalUncertainityAngle: String?
    public var altitudeUncertainity: String?
    public var batteryStatus: String?
    public var temperature: String?
    public var command: Command?

    public init() {
    }

    public init(id: String?, payloadSize: Int?, commandId: CommandId?, commandExtension: CommandExtension?, fullMessage: String?, deviceId: String?, createdOn: Date?, timestamp: Int64?, latitude: Double?, longitude: Double?, heading: String?, altitude: String?, assistedGPS: String?, gpsSpeed: String?, horizontalUncertainity: String?, perpendicularUncertainity: String?, horizontalUncertainityAngle: String?, altitudeUncertainity: String?, batteryStatus: String?, temperature: String?, command: Command?) {
        self.id = id
        self.payloadSize = payloadSize
        self.commandId = commandId
        self.commandExtension = commandExtension
        self.fullMessage = fullMessage
        self.deviceId = deviceId
        self.createdOn = createdOn
        self.timestamp = timestamp
        self.latitude = latitude
        self.longitude = longitude
        self.heading = heading
        self.altitude = altitude
        self.assistedGPS = assistedGPS
        self.gpsSpeed = gpsSpeed
        self.horizontalUncertainity = horizontalUncertainity
        self.perpendicularUncertainity = perpendicularUncertainity
        self.horizontalUncertainityAngle = horizontalUncertainityAngle
        self.altitudeUncertainity = altitudeUncertainity
        self.batteryStatus = batteryStatus
        self.temperature = temperature
        self.command = command
    }


}

