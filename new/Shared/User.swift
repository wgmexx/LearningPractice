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
    var work: String {
        "Worker some company"}
    var education: String {
        "Education some university"
    }
    var aboutMe: String {
        "About me some text bla bla bla bla"
    }
    var basics: [UserInterest] {
        [
            UserInterest(iconName: "ruler", emoji: nil, text: "\(height)"),
            UserInterest(iconName: "graduationcap", emoji: nil, text: education),
            UserInterest(iconName: "wineglass", emoji: nil, text: "Socialy"),
            UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Virgo"),
        ]
    }
    var interest: [UserInterest] {
        [
            UserInterest(iconName: nil, emoji: "🏃", text: "running"),
            UserInterest(iconName: nil, emoji: "🏋🏻‍♀️", text: "Gym"),
            UserInterest(iconName: nil, emoji: "🎵", text: "Music"),
            UserInterest(iconName: nil, emoji: "🧑🏻‍🍳", text: "Coocking"),
        ]
    }
    var images: [String] {
        [
            "https://picsum.photos/500/500", "https://picsum.photos/600/600", "https://picsum.photos/700/700"
        ]
            }
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
