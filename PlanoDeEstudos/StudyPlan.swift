//
//  StudyPlan.swift
//  PlanoDeEstudos
//
//  Created by Vitoria Ortega on 08/07/24.
//  Copyright © 2024 Eric Brito. All rights reserved.
//

import Foundation

class StudyPlan: Codable {
    
    let course: String
    let section: String
    let date: Date
    var done: Bool = false
    var id: String
    
    init(course: String, section: String, date: Date, done: Bool, id: String) {
        self.course = course
        self.section = section
        self.date = date
        self.done = done
        self.id = id
    }
}
