//
//  Teams.swift
//  TeamInformation
//
//  Created by Probeer on 02/02/26.
//

import Foundation
import Observation

enum CSESpecialization: String, CaseIterable {
    case artificialIntelligence = "Artificial Intelligence"
    case machineLearning = "Machine Learning"
    case dataScience = "Data Science"
    case cybersecurity = "Cybersecurity"
    case cloudComputing = "Cloud Computing"
    case blockchain = "Blockchain"
    case internetOfThings = "Internet of Things"
    case softwareEngineering = "Software Engineering"
    case webDevelopment = "Web Development"
    case mobileAppDevelopment = "Mobile App Development"
    case computerNetworks = "Computer Networks"
    case databaseSystems = "Database Systems"
    case bigDataAnalytics = "Big Data Analytics"
    case computerVision = "Computer Vision"
    case naturalLanguageProcessing = "Natural Language Processing"
    case robotics = "Robotics"
    case gameDevelopment = "Game Development"
    case embeddedSystems = "Embedded Systems"
    case distributedSystems = "Distributed Systems"
    case quantumComputing = "Quantum Computing"
    case humanComputerInteraction = "Human Computer Interaction"
    case devOps = "DevOps"
    case augmentedReality = "Augmented Reality"
    case virtualReality = "Virtual Reality"
    case bioinformatics = "Bioinformatics"
}

enum AppMilestone: String, CaseIterable {
    case problemStatement = "Problem Statement Defined"
    case userResearch = "User Research Completed"
    case requirements = "Requirements Finalized"
    case mvpDevelopment = "MVP Development Started"
    case prototypeReady = "Prototype Ready"
    case uiScreensDesigned = "UI Screens Designed"
    case navigationImplemented = "Navigation Implemented"
    case backendIntegrated = "Backend Integrated"
    case frameworksAdded = "Frameworks & APIs Integrated"
    case testingPhase = "Testing Phase Completed"
    case testFlightRelease = "TestFlight Release"
    case appStoreSubmission = "App Store Submission"
    case published = "App Published Successfully"
}

@Observable
class Team: Identifiable, Hashable {
    // Basic Details
    let id = UUID()
    var cohortNumber: Int
    var teamNumber: Int
    
    // Student Details
    var studentName: String
    var studentAdmissionNumber: String
    var isStudentCSECore: Bool
    var studentSpecialization: CSESpecialization?
    
    // App Details
    var appName: String
    var appDescription: String
    var appMilestone: AppMilestone?
    var appMilestoneCompletionDate: Date
    
    init(cohortNumber: Int, teamNumber: Int, studentName: String, studentAdmissionNumber: String, isStudentCSECore: Bool, studentSpecialization: CSESpecialization? = nil, appName: String, appDescription: String, appMilestone: AppMilestone? = nil, appMilestoneCompletionDate: Date) {
        self.cohortNumber = cohortNumber
        self.teamNumber = teamNumber
        self.studentName = studentName
        self.studentAdmissionNumber = studentAdmissionNumber
        self.isStudentCSECore = isStudentCSECore
        self.studentSpecialization = studentSpecialization
        self.appName = appName
        self.appDescription = appDescription
        self.appMilestone = appMilestone
        self.appMilestoneCompletionDate = appMilestoneCompletionDate
    }
    
    static func == (lhs: Team, rhs: Team) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

@Observable
class Teams {
    var allTeams: [Team] = [
        Team(
            cohortNumber: 3,
            teamNumber: 5,
            studentName: "Probeer Sahw",
            studentAdmissionNumber: "CSE2026A12",
            isStudentCSECore: false,
            studentSpecialization: .machineLearning,
            appName: "Health Tracker",
            appDescription: "An app to monitor daily health data using HealthKit.",
            appMilestone: .prototypeReady,
            appMilestoneCompletionDate: Date()
        ),
        Team(
            cohortNumber: 3,
            teamNumber: 10,
            studentName: "Probeer Sahw",
            studentAdmissionNumber: "CSE2026A12",
            isStudentCSECore: false,
            studentSpecialization: .machineLearning,
            appName: "Health Tracker",
            appDescription: "An app to monitor daily health data using HealthKit.",
            appMilestone: .prototypeReady,
            appMilestoneCompletionDate: Date()
        )
    ]
    
}
