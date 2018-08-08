//
//  Category.swift
//  Todoey
//
//  Created by Ron Lipkin on 7/27/18.
//  Copyright © 2018 Ron Lipkin. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var color: String = ""
    let items = List<Item>()
}
