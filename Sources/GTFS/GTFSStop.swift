//
//  Stop.swift
//  GTFS
//
//  Created by Simon Goldring on 7/13/20.
//  Copyright © 2020 Simon Goldring. All rights reserved.
//

import Foundation

public struct Stop: Decodable {
    
    public let stopId: String
    public let stopCode: String?
    public let stopName: String?
    public let stopLat: Double?
    public let stopLon: Double?
    
    enum CodingKeys: String, CodingKey {
        case stopId = "stop_id"
        case stopCode = "stop_code"
        case stopName = "stop_name"
        case stopLat = "stop_lat"
        case stopLon = "stop_lon"
    }
    
    //let stopDesc: String
    //let platformCode: String
    //let platformName: String
    //let zoneId: String
    //let stopAddress: String
    //let stopUrl: String
    //let levelId: String
    //let locationType: String
    //let parentStation: String
    //let wheelchairBoarding: String
    //let municipality: String
    //let onStreet: String
    //let atStreet: String
    //let vehicleType: String
}
