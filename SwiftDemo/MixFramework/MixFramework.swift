//
//  MixFramework.swift
//  SwiftDemo
//
//  Created by kimimaro on 15/11/27.
//  Copyright © 2015年 OneBox Design. All rights reserved.
//

import Foundation

/// be sure this is public classes
public class MixFramework: NSObject {
    
    let name_key = "name"
    let id_key = "guid"
    let tag_entity_name = "Tag"
    
    // singleton
    class var sharedInstance: MixFramework {
        struct Singleton {
            static let sharedInstance = MixFramework()
        }
        return Singleton.sharedInstance
    }
    
    public func testSwift() -> String {
        return "Swift in Framework."
    }
    
    public func runObjcBySwiftInFramework() -> String {
        let objcFrame = FrameworkObjcTest()
        print("Objc in Framework:\(objcFrame.saveHelloToFramework())")
        
        return "call OC inside a mix framework."
    }
    
    func runSwiftInFramework() {
        let swiftobj = FrameworkTest()
        print("swift in framework:\(swiftobj.testSwift())")
    }
    
    // override
    deinit {
        //        currentTags.removeObserver(self, forKeyPath: "selectionIndexes")
    }
}
