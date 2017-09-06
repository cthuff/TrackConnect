//
//  Setup.swift
//  NCAA-XC-Table
//
//  Created by Craig on 8/23/17.
//  Copyright © 2017 Craig. All rights reserved.
//

import Foundation

let men_100m_Key: String = "100m"
let men_200m_Key: String = "200m"
let men_400m_Key: String = "400m"

class SprintSetup {
    
    func setup()
    {
        men_100mTimes = load100m()
        men_100mTimes = men_100mTimes.sorted()
        men_200mTimes = load200m()
        men_200mTimes = men_200mTimes.sorted()
        men_400mTimes = load400m()
        men_400mTimes = men_400mTimes.sorted()
    }
    
    func load100m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
//            let place = split[0]
            let time = split[1]
            
           athlete.append(time)
        }
        return athlete
    }
    
    func load200m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[1]
            
            athlete.append(time)
        }
        return athlete
    }

    func load400m() -> [String] {
        let csv = Bundle.main.url(forResource: "", withExtension: "csv")
        let text = try! String(contentsOf: csv!)
        var lines = text.components(separatedBy: "\r\n")
        lines.remove(at: 95)
        
        var athlete = [String]()
        
        for line in lines {
            let split = line.components(separatedBy: "\t")
            //            let place = split[0]
            let time = split[1]
            
            athlete.append(time)
        }
        return athlete
    }

    func reset() {
        men_100mTimes.removeAll()
        men_200mTimes.removeAll()
        men_400mTimes.removeAll()
    }
}
