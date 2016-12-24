//
//  NSItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Henry McC on 2016/12/24.
//  Copyright © 2016 HiddenPlatform. All rights reserved.
//

import Foundation
import CoreData


extension NSItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NSItemType> {
        return NSFetchRequest<NSItemType>(entityName: "NSItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: NSItem?

}
