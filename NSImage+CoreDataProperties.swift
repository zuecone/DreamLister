//
//  NSImage+CoreDataProperties.swift
//  DreamLister
//
//  Created by Henry McC on 2016/12/24.
//  Copyright © 2016 HiddenPlatform. All rights reserved.
//

import Foundation
import CoreData


extension NSImage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NSImage> {
        return NSFetchRequest<NSImage>(entityName: "NSImage");
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var toItem: NSItem?
    @NSManaged public var toStore: NSSet?

}

// MARK: Generated accessors for toStore
extension NSImage {

    @objc(addToStoreObject:)
    @NSManaged public func addToToStore(_ value: NSStore)

    @objc(removeToStoreObject:)
    @NSManaged public func removeFromToStore(_ value: NSStore)

    @objc(addToStore:)
    @NSManaged public func addToToStore(_ values: NSSet)

    @objc(removeToStore:)
    @NSManaged public func removeFromToStore(_ values: NSSet)

}
