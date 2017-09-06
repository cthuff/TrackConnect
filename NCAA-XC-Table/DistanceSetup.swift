//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

let men_800_key: String = "800m"
let men_1500_Key: String = "1500m"
let men_steeple_Key: String = "Steeplechase"
let men_5k_Key: String = "5k"
let men_10k_Key: String = "10k"

class DistanceSetup {
    
    func setup()
    {
        men_800mTimes = load800()
        
        men_1500Times = load1500()
        
        men_steepleTimes = loadSteeple()
        
        men_5kTimes = load5k()
        
        men_10kTimes = load10k()
        
    }

    
    func load800() -> [String] {
        let csv = Bundle.main.url(forResource: "800FirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]
            
            athlete.append(time)
        }
        return athlete
    }

    
    func load1500() -> [String] {
        let csv = Bundle.main.url(forResource: "1500FirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
//            let place = split[0]
            let time = split[4]

           athlete.append(time)
        }
        return athlete
    }
    
    func load5k() -> [String] {
        let csv = Bundle.main.url(forResource: "5kFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]
            athlete.append(time)
        }
        return athlete
    }

    func loadSteeple() -> [String] {
        let csv = Bundle.main.url(forResource: "SteepleFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]
            athlete.append(time)
        }
        return athlete
    }

    func load10k() -> [String] {
        let csv = Bundle.main.url(forResource: "10kFirstRound", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[4]
            athlete.append(time)
        }
        return athlete
    }

}
