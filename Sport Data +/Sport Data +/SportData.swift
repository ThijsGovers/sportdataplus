//
//  SportData.swift
//  Sport Data +
//
//  Created by Thijs Govers on 05/06/2023.
//

import Foundation
struct ResponseData: Codable {
    let trainingLoad: [TrainingLoad]
    let weeklyZones: [WeeklyZone]
    let seasonZones: SeasonZone
    let activitySummaries: [ActivitySummary]
    let seasons: Seasons
    let profiles: [Profile]
    let totalActivities, selectedActivities: Int
    
    enum CodingKeys: String, CodingKey {
        case trainingLoad = "training_load"
        case weeklyZones = "weekly_zones"
        case seasonZones = "season_zones"
        case activitySummaries = "activity_summaries"
        case seasons, profiles
        case totalActivities = "total_activities"
        case selectedActivities = "selected_activities"
    }
}

struct TrainingLoad: Codable {
    let id: TrainingLoadID
    let duration, distance, count: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case duration, distance, count
    }
}

struct TrainingLoadID: Codable {
    let collectionSubtype, date: String

    enum CodingKeys: String, CodingKey {
        case collectionSubtype = "collection_subtype"
        case date
    }
}


struct WeeklyZone: Codable {
    let id: String
    let hr, power: [Int]

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case hr, power
    }
}

struct SeasonZone: Codable {
    let hr, power: [Int]
}

struct Planning: Codable {
    let today: [ PlanningItem
    ]
}

//
struct PlanningItem: Codable {
    let startTime: String
    let location: String
    
}


struct ActivitySummary: Codable {
    let startDate: String
    let duration, distance, avgSpeed: Int
    let weightedAvgWatts, avgHr: Int

    enum CodingKeys: String, CodingKey {
        case startDate = "start_date"
        case duration, distance
        case avgSpeed = "avg_speed"
        case weightedAvgWatts = "weighted_avg_watts"
        case avgHr = "avg_hr"
    }
}

struct Seasons: Codable {
    let previousSeason, currentSeason: Season

    enum CodingKeys: String, CodingKey {
        case previousSeason = "previous_season"
        case currentSeason = "current_season"
    }
}

struct Season: Codable {
    let start, end: String
    let avgDistancePerWeek, avgDurationPerWeek, avgTrainingsPerWeek: Int
    let avgElevationPerWeek, avgHr, maxHr: Int
    let avgSpeed, maxSpeed: Int
    let avgPower, maxPower: Int

    enum CodingKeys: String, CodingKey {
        case start, end
        case avgDistancePerWeek = "avg_distance_per_week"
        case avgDurationPerWeek = "avg_duration_per_week"
        case avgTrainingsPerWeek = "avg_trainings_per_week"
        case avgElevationPerWeek = "avg_elevation_per_week"
        case avgHr = "avg_hr"
        case maxHr = "max_hr"
        case avgSpeed = "avg_speed"
        case maxSpeed = "max_speed"
        case avgPower = "avg_power"
        case maxPower = "max_power"
    }
}

struct Profile: Codable {
    let id: Int
    let picture, publicURL, firstName, lastName: String

    enum CodingKeys: String, CodingKey {
        case id, picture
        case publicURL = "public_url"
        case firstName = "first_name"
        case lastName = "last_name"
    }
}

