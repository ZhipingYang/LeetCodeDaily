//: [Previous](@previous)

import Foundation

extension Date {
  @nonobjc static var localFormatter: DateFormatter = {
    let dateStringFormatter = DateFormatter()
    dateStringFormatter.dateStyle = .short
    dateStringFormatter.timeStyle = .full
    return dateStringFormatter
  }()
  
  func localDateString() -> String {
    return Date.localFormatter.string(from: self)
  }
}


var date = Date()
date.description
date.debugDescription
date.localDateString()
