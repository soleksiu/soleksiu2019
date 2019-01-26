//
//  Article.swift
//  Pods-soleksiu2019_Example
//
//  Created by Sergii OLEKSIUK on 1/26/19.
//

import UIKit
import CoreData

public class Article: NSManagedObject {
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Article> {
        return NSFetchRequest<Article>(entityName: "Entitity")
    }
    
    @NSManaged public var content: String?
    @NSManaged public var creation_date: NSDate?
    @NSManaged public var image: NSData?
    @NSManaged public var language: String?
    @NSManaged public var modification_date: NSDate?
    @NSManaged public var title: String?
}
