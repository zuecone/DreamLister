//
//  NSItem+CoreDataProperties.swift
//  DreamLister
//
//  Created by Henry McC on 2016/12/24.
//  Copyright © 2016 HiddenPlatform. All rights reserved.
//

import Foundation
import CoreData


extension NSItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NSItem> {
        return NSFetchRequest<NSItem>(entityName: "NSItem");
    }

    @NSManaged public var created: NSDate?
    @NSManaged public var details: String?
    @NSManaged public var price: Double
    @NSManaged public var title: String?
    @NSManaged public var toImage: NSImage?
    @NSManaged public var toItemType: NSItemType?
    @NSManaged public var toStore: NSStore?

}
