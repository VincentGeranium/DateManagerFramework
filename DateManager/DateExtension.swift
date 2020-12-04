//
//  DateExtension.swift
//  DateManagerDevelop
//
//  Created by 김광준 on 2020/12/04.
//

import Foundation

extension Date {
    var date: Date {
        let date: Date = Date()
        return date
    }
    
    var dateFormatter: DateFormatter {
        let formatter: DateFormatter = DateFormatter()
        formatter.locale = Locale.init(identifier: "ko_KR")
        formatter.timeZone = TimeZone.autoupdatingCurrent
        formatter.dateFormat = "yyyyMMdd HH:mm:ss"
        return formatter
    }

    var noonByDate: Date {
        return Calendar.current.date(bySettingHour: 12, minute: 0, second: 0, of: self)!
    }
    
    var yesterdayByDate: Date {
        let stringValueYesterday = self.dateFormatter.string(from: date)
        
        let dateValueYesterday = self.dateFormatter.date(from: stringValueYesterday)!
        
        return Calendar.current.date(byAdding: .day, value: -1, to: dateValueYesterday)!
    }
    
    var tomorrowByDate: Date {
        let stringValueTomorrow = self.dateFormatter.string(from: date)
        
        let dateValueTomorrow = self.dateFormatter.date(from: stringValueTomorrow)!
        
        return Calendar.current.date(byAdding: .day, value: 1, to: dateValueTomorrow)!
    }
    
    var todayByDate: Date {
        
        let stringValueToday = self.dateFormatter.string(from: date)
        
        let dateValueToday = self.dateFormatter.date(from: stringValueToday)!
        
        return dateValueToday
    }
    
    var yesterdayByString: String {
        let yesterday = dateFormatter.string(from: yesterdayByDate)
        return yesterday
    }
    
    var tomorrowByString: String {
        let tomorrow = dateFormatter.string(from: tomorrowByDate)
        return tomorrow
    }
    
    var todayByString: String {
        let today = dateFormatter.string(from: todayByDate)
        return today
    }

    static var yesterdayByStringValue: String { return Date().yesterdayByString }
    
    static var tomorrowByStringValue: String { return Date().tomorrowByString }
    
    static var todayByStringValue: String { return Date().todayByString }
    
    static var yesterdayByDateValue: Date { return Date().yesterdayByDate }
    
    static var tomorrowByDateValue: Date { return Date().tomorrowByDate }
    
    static var todayByDateValue: Date { return Date().todayByDate }
    
}

