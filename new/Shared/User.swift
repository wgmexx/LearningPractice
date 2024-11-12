import Foundation

struct UserArray: Codable {
    
    let users: [User]
    let total, skip, limit: Int
}


// MARK: - User
struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName, maidenName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height, weight: Double
    
    static var mock: User {
        User(
            id: 1,
            firstName: "mexx",
            lastName: "Doe",
            maidenName: "",
            age: 20,
            email: "john@doe.com",
            phone: "+1234567890",
            username: "johndoe",
            password: "password",
            image: Constants.randomImage,
            height: 1.8,
            weight: 70
        )
    }
}
