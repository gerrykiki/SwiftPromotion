//
//  DataCatch.swift
//  Swift_Promotion
//
//  Created by Po wei Lin on 2018/10/15.
//

import UIKit

class DataCatch: NSObject {
    private static var mInstance:DataCatch?
    static func sharedInstance() -> DataCatch {
        if mInstance == nil {
            mInstance = DataCatch()
            
        }
        return mInstance!
    }
    // mInstane is not Null
    
    private override init() {
        
    }
    
}
