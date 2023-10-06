import Foundation
// Using ':' is to implement protocols (interfaces for IOS)
struct User: Identifiable, Codable, Hashable {
    // Hashable is for navigation between views
    // Codable is to parse and stringify to json files - useful for API rest
    // Identifiable to get a unique id
    /*
     The difference between let and var is that
     let is inmutable -> once you assign a value you can't change it
     var is mutable -> you can change the value as many times as you need
     */
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var nickname: String?
    let email: String
}

// This part is to mock some data (use fake data to simulate a rest api response)
extension User {
    static var MOCK_USERS:[User]=[
        .init(id: NSUUID().uuidString,
              username: "Batman",
              profileImageUrl: "Batman",
              fullname: "Bruce Wayne",
              nickname: "Batman",
              email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString,
              username: "BlackPanther",
              profileImageUrl: "BlackPanther",
              fullname: "BlackPanther",
              nickname: "BlackPanther",
              email: "blackpanther@gmail.com"),
        .init(id: NSUUID().uuidString,
              username: "Goku",
              profileImageUrl: "goku",
              fullname: "Kakaroto",
              nickname: "Goku",
              email: "goku@gmail.com"),
        .init(id: NSUUID().uuidString,
              username: "Vegeta",
              profileImageUrl: "vegeta",
              fullname: "Vegeta King of saiyans",
              nickname: "Vegeta",
              email: "vegeta@gmail.com"),
        .init(id: NSUUID().uuidString,
              username: "Naruto",
              profileImageUrl: "naruto",
              fullname: "Uzumaki Naruto",
              nickname: "Naruto",
              email: "naruto@gmail.com"),
    ]
}
