//
//  StudyManager.swift
//  PlanoDeEstudos
//
//  Created by Vitoria Ortega on 08/07/24.
//  Copyright © 2024 Eric Brito. All rights reserved.
//

import Foundation

class StudyManager {
    static let shared = StudyManager()
    let ud = UserDefaults.standard
    var studyPlans: [StudyPlan] = []
    
    private init() {
        if let data = ud.data(forKey: "studyPlans"), let plans = try?
            JSONDecoder().decode([StudyPlan].self, from: data) {
            self.studyPlans = plans
        }
    }
    
    func savePlans() {
        if let data = try? JSONEncoder().encode(studyPlans) {
            ud.set(data, forKey: "studyPlans")
        }
    }
    
    func addPlan(_ studyPlan: StudyPlan) {
        studyPlans.append(studyPlan)
        savePlans()
    }
    
    func removePlan(at index: Int) {
        studyPlans.remove(at: index)
        savePlans()
    }
}
