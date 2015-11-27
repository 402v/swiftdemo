//
//  FrameworkTest.swift
//  SwiftDemo
//
//  Created by kimimaro on 15/11/27.
//  Copyright © 2015年 OneBox Design. All rights reserved.
//

import Foundation

let TagManagerDidSaveTagsNotification = "TagManagerDidSaveTagsNotification"

class FrameworkTest: NSObject {
    
    let name_key = "name"
    let id_key = "guid"
    let tag_entity_name = "Tag"
    
    // singleton
    class var sharedInstance: FrameworkTest {
        struct Singleton {
            static let sharedInstance = FrameworkTest()
        }
        return Singleton.sharedInstance
    }
    
    func testSwift() -> String {
        return "Swift in Framework."
    }
    
    func runObjcBySwiftInFramework() {
        let objcFrame = FrameworkObjcTest()
        print("Objc in Framework:\(objcFrame.saveHelloToFramework())")
    }
    
    // override
    deinit {
//        currentTags.removeObserver(self, forKeyPath: "selectionIndexes")
    }
}
