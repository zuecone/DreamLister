//
//  NSStore+CoreDataProperties.swift
//  DreamLister
//
//  Created by Henry McC on 2016/12/24.
//  Copyright © 2016 HiddenPlatform. All rights reserved.
//

import Foundation
import CoreData


extension NSStore {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NSStore> {
        return NSFetchRequest<NSStore>(entityName: "NSStore");
    }

    @NSManaged public var name: String?
    @NSManaged public var toImage: NSImage?
    @NSManaged public var toItem: NSSet?

}

// MARK: Generated accessors for toItem
extension NSStore {

    @objc(addToItemObject:)
    @NSManaged public func addToToItem(_ value: NSItem)

    @objc(removeToItemObject:)
    @NSManaged public func removeFromToItem(_ value: NSItem)

    @objc(addToItem:)
    @NSManaged public func addToToItem(_ values: NSSet)

    @objc(removeToItem:)
    @NSManaged public func removeFromToItem(_ values: NSSet)

}
