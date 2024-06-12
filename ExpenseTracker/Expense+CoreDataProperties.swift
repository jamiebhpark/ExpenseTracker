//
//  Expense+CoreDataProperties.swift
//  ExpenseTracker
//
//  Created by JONGHUN PARK on 6/12/24.
//
//

import Foundation
import CoreData


extension Expense {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Expense> {
        return NSFetchRequest<Expense>(entityName: "Expense")
    }

    @NSManaged public var amount: Double
    @NSManaged public var category: String?
    @NSManaged public var date: Date?

}

extension Expense : Identifiable {

}
