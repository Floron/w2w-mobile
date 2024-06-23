//
//  CreateBrand.swift
//  W2WMatch
//
//  Created by Floron on 20.06.2024.
//

import Foundation

// MARK: - CreateBrandRequestBody
struct CreateBrandRequestBody: Codable {
    var category = RequestQuestionType()                // доделать в RegistrationStep6. question = 4
    var presenceType = RequestQuestionType()            // доделать в RegistrationStep7. question = 7
    var publicSpeaker = RequestQuestionType()           // доделать в RegistrationStep10. question = 9
    var subsCount = RequestQuestionType()               // доделать в RegistrationStep4. question = 10
    var avgBill = RequestQuestionType()                 // доделать в RegistrationStep5. question = 11
    var goals = [RequestQuestionType()]                 // доделать в VeryImportantScreen. question = 18
    var formats = [RequestQuestionType()]               // доделать в InterectionFormatScreen. question = 17
    var collaborationInterest = [RequestQuestionType()] // доделать в RegistrationStep11. question = 19
    var tgNickname = ""              // done
    var brandNamePos = ""           // done
    var instBrandURL = ""           // done
    var brandSiteURL = ""           // done
    var topics = ""                 // done
    var missionStatement = ""       // done
    var targetAudience = ""      // check me on AboutYorselfScreen
    var uniqueProductIs = ""        // done
    var productDescription = ""     // done
    var problemSolving = ""         // done
    var businessGroup = ""          // done
    var logo = ""                   // 13
    var photo = ""                  // 14
    var productPhoto = ""           // 12 LastAuthScreen
    var fullname = ""               // done

    enum CodingKeys: String, CodingKey {
        case category
        case presenceType = "presence_type"
        case publicSpeaker = "public_speaker"
        case subsCount = "subs_count"
        case avgBill = "avg_bill"
        case goals, formats
        case collaborationInterest = "collaboration_interest"
        case tgNickname = "tg_nickname"
        case brandNamePos = "brand_name_pos"
        case instBrandURL = "inst_brand_url"
        case brandSiteURL = "brand_site_url"
        case topics
        case missionStatement = "mission_statement"
        case targetAudience = "target_audience"
        case uniqueProductIs = "unique_product_is"
        case productDescription = "product_description"
        case problemSolving = "problem_solving"
        case businessGroup = "business_group"
        case logo, photo
        case productPhoto = "product_photo"
        case fullname
    }
}

// MARK: - AvgBill
struct RequestQuestionType: Codable {
    var text: String = ""
    var question: Int = 0
}


// MARK: - CreateBrand response
struct CreateBrandResponse: Codable {
    var id: Int
    var user: User2
    var subscription: Subscription?
    var category, presenceType, publicSpeaker, subsCount: QuestionType
    var avgBill: QuestionType
    var goals, formats, collaborationInterest: [QuestionType]
    var subExpire: String?
    var published: Bool
    var tgNickname, brandNamePos: String
    var instBrandURL, brandSiteURL, topics, missionStatement: String
    var targetAudience, uniqueProductIs, productDescription, problemSolving: String
    var businessGroup, logo, photo, productPhoto: String
    var fullname: String

    enum CodingKeys: String, CodingKey {
        case id, user, subscription, category
        case presenceType = "presence_type"
        case publicSpeaker = "public_speaker"
        case subsCount = "subs_count"
        case avgBill = "avg_bill"
        case goals, formats
        case published
        case collaborationInterest = "collaboration_interest"
        case subExpire = "sub_expire"
        case tgNickname = "tg_nickname"
        case brandNamePos = "brand_name_pos"
        case instBrandURL = "inst_brand_url"
        case brandSiteURL = "brand_site_url"
        case topics
        case missionStatement = "mission_statement"
        case targetAudience = "target_audience"
        case uniqueProductIs = "unique_product_is"
        case productDescription = "product_description"
        case problemSolving = "problem_solving"
        case businessGroup = "business_group"
        case logo, photo
        case productPhoto = "product_photo"
        case fullname
    }
}

// MARK: - QuestionType
struct QuestionType: Codable {
    var text: String
}

// MARK: - Subscription
struct Subscription: Codable {
    var id: Int
    var name: String
    var cost: Int
    var duration: String
}

// MARK: - User
struct User2: Codable {
    var id: Int
    var email, phone: String
}
