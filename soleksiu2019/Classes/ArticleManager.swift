//
//  ArticleManager.swift
//  Pods-soleksiu2019_Example
//
//  Created by Sergii OLEKSIUK on 1/26/19.
//

import UIKit
import CoreData
import Foundation

public class ArcticleManager {
    
    public var allArticles: [Article]?
    public var context: NSManagedObjectContext?
//    lazy var model: NSManagedObjectModel = {
//        let sexyFrameworkBundleIdentifier = "org.cocoapods.soleksiu2019"
//        let customKitBundle = Bundle(identifier: sexyFrameworkBundleIdentifier)!
//        let modelURL = customKitBundle.url(forResource: "article", withExtension: "momd")!
//        return NSManagedObjectModel(contentsOf: modelURL)!
//    }()
    public  init() {
//        let bundle = Bundle(for: Article.self)
                let bundle = Bundle(identifier: "org.cocoapods.soleksiu2019")
        guard let modelUrl = bundle?.url(forResource: "article", withExtension: "momd") else {
            fatalError("No model URL")
        }
        
        guard let model = NSManagedObjectModel(contentsOf: modelUrl) else {
            fatalError("No model")
        }
        

        let psc = NSPersistentStoreCoordinator(managedObjectModel: model)
        context = NSManagedObjectContext(concurrencyType: .mainQueueConcurrencyType)
        let documentURL = try! FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).last
        let storeURL = documentURL?.appendingPathComponent("soleksiu2019.sqlite"); do {
            try psc.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: "article", at: storeURL, options: nil)
        }
        catch {
            fatalError("No strore URL")
        }
//        try! psc.addPersistentStore(ofType: NSSQLiteStoreType, configurationName: nil, at: stoteURL, options: nil)

        context?.persistentStoreCoordinator = psc
    }
    
    public func newArticle() -> Article {
//        var newArticle = Article()
//        context?.performAndWait() {
//            let entity: NSEntityDescription = NSEntityDescription.entity(forEntityName: "Article", in: context!)!
//            newArticle = Article(entity:entity, insertInto: context)
//            newArticle.title = "Default"
//            newArticle.content = "Default"
//            newArticle.language = "En"
//            newArticle.image = nil
//            newArticle.creation_date = nil
//            //            newArticle.creation_date = NSDate()
//            newArticle.modification_date = newArticle.creation_date
//        }
        return (NSEntityDescription.insertNewObject(forEntityName: "Article", into: context!) as! Article)
    }
    
    public func newArticle(title: String, content: String, language: String, image: NSData) -> Article {
        var newArticle = Article()
        context?.performAndWait() {
            let entity: NSEntityDescription = NSEntityDescription.entity(forEntityName: "Article", in: context!)!
            newArticle = Article(entity:entity, insertInto: context)
            newArticle.title = title
            newArticle.content = content
            newArticle.language = language
            newArticle.image = nil
            
            //            newArticle.image = image as Data as Data
            newArticle.creationDate = nil
            //            newArticle.creation_date = NSDate() as Date as Date
            newArticle.modificationDate = newArticle.creationDate
        }
        return (newArticle)
    }
    
    public func getAllArticles ()  -> [Article] {
        var result = [Article]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Article")
        do {
            if let tempResult = try context?.fetch(request) as? [Article] {
                result = tempResult
            }
        }
        catch {
            fatalError("Fail to fetch data \(error)")
        }
        return result
    }
    
    public func getArticles(withLang lang: String)   -> [Article] {
        var result = [Article]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Article")
        request.predicate = NSPredicate(format: "language == %@", lang)
        do {
            result = try context?.fetch(request) as! [Article]
        }
        catch {
            fatalError("Fail to fetch data \(error)")
        }
        return result
    }
    
    public func getArticles(containString str: String) -> [Article] {
        var result = [Article]()
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Article")
        request.predicate = NSPredicate(format: "title CONTAINS %@ OR content CONTAINS %@", str, str)
        do {
            result = try context?.fetch(request) as! [Article]
        }
        catch {
            fatalError("Fail to fetch data \(error)")
        }
        return result
    }
    
    public func removeArticle(article : Article)  {
        context?.delete(article)
    }
    
    public func save()  {
        if (context?.hasChanges)! {
            do {
                try context?.save()
            } catch {
                let nserror = error as NSError
                NSLog("Unresolved error \(nserror), \(nserror.userInfo)")
                abort()
            }
        }
    }
}
