//
//  Job.swift
//  job-m
//
//  Created by Martin Llaneza on 12/9/18.
//  Copyright © 2018 edsaio. All rights reserved.
//

import Foundation

struct Job
{
    var companyName: String?
    var location: String?
    var position: String?
    var postedDate: String?
    
    static func fetchPosts() -> [Job]
    {
        var jobs = [
            Job(companyName: "ABC International Bank", location: "Singapore", position: "Frontend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank 1", location: "Singapore", position: "Backend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank", location: "Singapore", position: "Frontend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank 1", location: "Singapore", position: "Backend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank", location: "Singapore", position: "Frontend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank 1", location: "Singapore", position: "Backend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank", location: "Singapore", position: "Frontend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank 1", location: "Singapore", position: "Backend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank", location: "Singapore", position: "Frontend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank 1", location: "Singapore", position: "Backend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank", location: "Singapore", position: "Frontend developer", postedDate: "Yesterday"),
            Job(companyName: "ABC International Bank 1", location: "Singapore", position: "Backend developer", postedDate: "Yesterday")
        ]
        
        return jobs
    }
}
