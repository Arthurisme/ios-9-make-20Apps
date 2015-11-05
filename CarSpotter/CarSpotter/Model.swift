//
//  Model.swift
//  CarSpotter
//
//  Created by Arthur on 2015-11-05.
//  Copyright © 2015 Arthur. All rights reserved.
//

import UIKit
import CoreData

class Model: NSManagedObject {
    
    @NSManaged var carmake: String
    @NSManaged var carmodel: String
    @NSManaged var caryear: String
    
    

}
