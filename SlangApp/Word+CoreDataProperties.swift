//
//  Word+CoreDataProperties.swift
//  SlangApp
//
//  Created by Kam Lotfull on 21.05.17.
//  Copyright © 2017 Kam Lotfull. All rights reserved.
//

import Foundation
import CoreData
import UIKit

extension Word {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Word> {
        return NSFetchRequest<Word>(entityName: "Word")
    }
    
    @NSManaged public var name: String
    @NSManaged public var definition: String
    @NSManaged public var group: String?
    @NSManaged public var type: String?
    @NSManaged public var examples: String?
    @NSManaged public var hashtags: String?
    @NSManaged public var origin: String?
    @NSManaged public var synonyms: String?
    @NSManaged public var favorite: Bool
    @NSManaged public var dictionaryId: Int
    @NSManaged public var link: String?
    @NSManaged public var video: String?

    func textViewString() -> String {
        var answer = "\(name)\n\(definition)"
        for (a, b) in [("группа", group),
                       ("тип", type),
                       ("теги", hashtags),
                       ("примеры", examples),
                       ("происх", origin),
                       ("син.", synonyms)] {
            if b != nil {
                answer += "\n\(a): \(b!)"
            }
        }
        return answer
    }
    
}
