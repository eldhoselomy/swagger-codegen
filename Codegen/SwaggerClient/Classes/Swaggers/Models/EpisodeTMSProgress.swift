//
// CooeyAPIClient
// EpisodeTMSProgress.swift
//
// Generated by Eldhose Lomy
// https://github.com/eldhoselomy/swagger-codegen
//

import Foundation



public struct EpisodeTMSProgress: Codable {

    public enum EpisodeType: String, Codable { 
        case rpm = "RPM"
        case homeAide = "HOME_AIDE"
        case general = "GENERAL"
    }
    public var episodeId: String?
    public var episodeType: EpisodeType?
    public var total: Int64?
    public var completed: Int64?
    public var percent: Int?
    public var remaining: String?
    public var maxValue: Int?

    public init() {
    }

    public init(episodeId: String?, episodeType: EpisodeType?, total: Int64?, completed: Int64?, percent: Int?, remaining: String?, maxValue: Int?) {
        self.episodeId = episodeId
        self.episodeType = episodeType
        self.total = total
        self.completed = completed
        self.percent = percent
        self.remaining = remaining
        self.maxValue = maxValue
    }


}

