//
//  Course.swift
//  grades
//
//  Created by centro docente de computos on 2/19/16.
//  Copyright © 2016 UdeM. All rights reserved.
//

import Foundation
class Course {
    // MARK: - Properties
    var name: String?
    var grade:Float?
    
    // MARK: - Init
    
    init(name:String, grade:Float){
        self.name = name
        self.grade = grade
    }
    
    
    convenience init(){
        self.init(name:"",grade:0.0)
    }
    
    // MARK : - Utils
    
    class func courses() -> [Course]{
        var data = [Course]()
        let rawData = [
            ["name":"Formulacion y evalucaion de proyectos", "grade":4.3],
            ["name":"Ingenieria de software II", "grade":2.5],
             ["name":"Sistemas de información", "grade":3.5],
             ["name":"Sistemas operativos", "grade":4.5],
             ["name":"Algebra", "grade":3.0],
             ["name":"Analisis", "grade":5.0]
        ]
        for item in rawData{
            let course = Course(name: item["name"] as! String, grade: item["grade"] as! Float)
                data.append(course)
        }
            return data
    }
    
}