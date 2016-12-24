//
//  Item+CoreDataProperties.swift
//  DreamLister
//
//  Created by Henry McC on 2016/12/24.
//  Copyright © 2016 HiddenPlatform. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Item {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Item> {
        return NSFetchRequest<Item>(entityName: "Item");
    }

    @NSManaged public var created: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var price: Double
    @NSManaged public var details: String?
    @NSManaged public var toImage: Image?
    @NSManaged public var toItemType: ItemType?
    @NSManaged public var toStore: Store?

}
