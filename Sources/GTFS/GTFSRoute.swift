//
//  GTFSRoute.swift
//  GTFS
//
//  Created by Simon Goldring on 7/12/20.
//  Copyright © 2020 Simon Goldring. All rights reserved.
//

import Foundation

public struct Route: Decodable {
    
    public let routeId: String
    public let agencyId: String?
    public let routeShortName: String?
    public let routeLongName: String?
    public let routeDesc: String?
    public let routeType: Int
    public let routeUrl: String?
    public let routeColor: String?
    public let routeTextColor: String?
    public let routeSortOrder: String?
    public let routeFareClass: String?
    public let lineId: String?
    public let listedRoute: String?
    
    /*enum CodingKeys: String, CodingKey {
        case routeId = "route_id"
        case agencyId = "agency_id"
        case routeShortName = "route_short_name"
        case routeLongName = "route_long_name"
        case routeDesc = "route_desc"
        case routeType = "route_type"
        case routeUrl = "route_url"
        case routeColor = "route_color"
        case routeTextColor = "route_text_color"
        case routeSortOrder = "route_sort_order"
        case routeFareClass = "route_fare_class"
        case lineId = "line_id"
        case listedRoute = "listed_route"
    }*/
}

public enum GTFSRouteType: Int, CaseIterable {
    case trams = 0
    case metro = 1
    case rail = 2
    case buses = 3
}
