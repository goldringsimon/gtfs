//
//  ShapeManager.swift
//  GTFS
//
//  Created by Simon Goldring on 7/12/20.
//  Copyright © 2020 Simon Goldring. All rights reserved.
//

import CoreGraphics

public struct ShapePoint: Decodable {
    
    public let shapeId: String
    public let ptLat: Double
    public let ptLon: Double
    public let ptSequence: Int
    public let distTraveled: Float?
    
    /*enum CodingKeys: String, CodingKey {
        case shapeId = "shape_id"
        case ptLat = "shape_pt_lat"
        case ptLon = "shape_pt_lon"
        case ptSequence = "shape_pt_sequence"
        case distTraveled = "shape_dist_traveled"
    }*/
    
    public static func getOverviewViewport(for shapePoints: [ShapePoint]) -> CGRect {
        let points = shapePoints.map { CGPoint(x: $0.ptLon, y: $0.ptLat) }
        guard let firstPoint = points.first else { return .zero }
        let minX = points.reduce(firstPoint.x, { CGFloat.minimum($0, $1.x) })
        let minY = points.reduce(firstPoint.y, { CGFloat.minimum($0, $1.y) })
        let maxX = points.reduce(firstPoint.x, { CGFloat.maximum($0, $1.x) })
        let maxY = points.reduce(firstPoint.y, { CGFloat.maximum($0, $1.y) })
        return CGRect(x: minX, y: minY, width: maxX - minX, height: maxY - minY)
        
        /*var minLon = first.ptLon
        var maxLon = first.ptLon
        var minLat = first.ptLat
        var maxLat = first.ptLat
        for point in shapePoints {
            if point.ptLon < minLon { minLon = point.ptLon }
            if point.ptLon > maxLon { maxLon = point.ptLon }
            if point.ptLat < minLat { minLat = point.ptLat }
            if point.ptLat > maxLat { maxLat = point.ptLat }
        }
        return CGRect(x: minLon, y: minLat, width: maxLon-minLon, height: maxLat-minLat)*/
    }
}
