//
//  Entries+CoreDataProperties.swift
//  Picture Gallery
//
//  Created by Johnathan Chen on 9/17/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//
//

import Foundation
import CoreData


extension Entries {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Entries> {
        return NSFetchRequest<Entries>(entityName: "Entries")
    }

    @NSManaged public var date: NSDate?
    @NSManaged public var entry: String?
    @NSManaged public var location: String?
    @NSManaged public var image: NSData?

}
