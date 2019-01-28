//
//  ViewController.swift
//  soleksiu2019
//
//  Created by soleksiu on 01/26/2019.
//  Copyright (c) 2019 soleksiu. All rights reserved.
//

import UIKit
import soleksiu2019

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Creating article manager")
        let articleManager = ArcticleManager()
        print("Creating new article and setting data...")
        let article_first =  articleManager.newArticle()
        article_first.title = "First article"
        article_first.content = "Day 08"
        //        article_first.creation_date = NSDate()
        //        article_first.modification_date = NSDate()
        article_first.language = "en"
//        print(article_first.title ?? "Empty")
//        print(article_first.content ?? "Empty")
//        print(article_first.content ?? "Language")
//        print(article_first.creationDate)
//        print(article_first.creationDate)
        print(article_first.description)
        print("Saving the article")
//        articleManager.save()
//        
//        let article_second = articleManager.newArticle()
//        article_second.title = "Second article"
//        article_second.content = "Day 08 Second article"
//        //        article_second.creationDate = NSDate()
//        //        article_second.modificationDate = NSDate()
//        article_second.language = "en"
//        articleManager.save()
//        print(articleManager.getAllArticles())
//        
//        
//        print("Removing article: ")
//        articleManager.removeArticle(article: article_first)
//        print("Printing all articles: ")
//        print(articleManager.getAllArticles())

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

