//
//  JsonData.swift
//  Sport Data +
//
//  Created by Thijs Govers on 05/06/2023.
//

import Foundation

func parseJSON(jsonString: String) -> ResponseData? {
    let data = Data(jsonString.utf8)
    let decoder = JSONDecoder()
    do {
        let responseData = try decoder.decode(ResponseData.self, from: data)
        return responseData
    } catch {
        print("Error decoding JSON: \(error)")
        return nil
    }
}

// Example usage:

let multiActivityExampleJSON = """
{
  "training_load": [
    {
      "_id": {
        "collection_subtype": "collection_subtype.generic",
        "date": "2018-07-16T00:00:00.000Z"
      },
      "duration": 0,
      "distance": 0,
      "count": 0
    }
  ],
  "weekly_zones": [
    {
      "_id": "2018-07-16T00:00:00.000Z",
      "hr": [
        123,
        534,
        435,
        421,
        123
      ],
      "power": [
        123,
        534,
        435,
        421,
        123
      ]
    }
  ],
  "season_zones": {
    "hr": [
      123,
      534,
      435,
      421,
      123
    ],
    "power": [
      123,
      534,
      435,
      421,
      123
    ]
  },
  "activity_summaries": [
    {
      "start_date": "string",
      "duration": 0,
      "distance": 0,
      "avg_speed": 0,
      "weighted_avg_watts": 0,
      "avg_hr": 0
    }
  ],
  "seasons": {
    "previous_season": {
      "start": "string",
      "end": "string",
      "avg_distance_per_week": 0,
      "avg_duration_per_week": 0,
      "avg_trainings_per_week": 0,
      "avg_elevation_per_week": 0,
      "avg_hr": 0,
      "max_hr": 0,
      "avg_speed": 0,
      "max_speed": 0,
      "avg_power": 0,
      "max_power": 0
    },
    "current_season": {
      "start": "string",
      "end": "string",
      "avg_distance_per_week": 0,
      "avg_duration_per_week": 0,
      "avg_trainings_per_week": 0,
      "avg_elevation_per_week": 0,
      "avg_hr": 0,
      "max_hr": 0,
      "avg_speed": 0,
      "max_speed": 0,
      "avg_power": 0,
      "max_power": 0
    }
  },
  "profiles": [
    {
      "id": 0,
      "picture": "string",
      "public_url": "string",
      "first_name": "string",
      "last_name": "string"
    }
  ],
  "total_activities": 0,
  "selected_activities": 0
}
"""
