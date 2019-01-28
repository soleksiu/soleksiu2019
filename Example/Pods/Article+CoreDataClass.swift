//
//  Article+CoreDataClass.swift
//  
//
//  Created by Sergii OLEKSIUK on 1/28/19.
//
//

import Foundation
import CoreData

@objc(Article)
public class Article: NSManagedObject {
    

         override public var description: String? {
            get {
                return ("Here is the article info: \n Title: \(title)\n Content: \(content)\n Language: \(language)\n Modification date: \(modificationDate)\n Creation date: \(creationDate)")
            }
        }

}
