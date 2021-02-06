//
//  Trip.swift
//  GTFS
//
//  Created by Simon Goldring on 7/12/20.
//  Copyright © 2020 Simon Goldring. All rights reserved.
//

import Foundation

public struct Trip: Decodable {
    
    public let routeId: String
    public let serviceId: String
    public let tripId: String
    public let tripHeadsign: String?
    public let tripShortName: String?
    public let directionId: Int?
    public let shapeId: String?
    
    /*enum CodingKeys: String, CodingKey {
        case routeId = "route_id"
        case serviceId = "service_id"
        case tripId = "trip_id"
        case tripHeadsign = "trip_headsign"
        case tripShortName = "trip_short_name"
        case directionId = "direction_id"
        case shapeId = "shape_id"
    }*/
}
