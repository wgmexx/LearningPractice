import Foundation

struct ProdductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand: String?
    let images: [String]
    let thumbnail: String
    let category: String
    
    var firstImage: String {
        images.first ?? Constants.randomImage
    }
    
 static var mock: Product {
        Product(
            id: 123,
            title: "Example product title",
            description: "This is some mock product description that goes here",
            price: 999,
            discountPercentage: 15,
            rating: 4.5,
            stock: 50,
            brand: "Apple",
            images: [Constants.randomImage, Constants.randomImage, Constants.randomImage],
            thumbnail: Constants.randomImage,
            category: "Electronic Devices"
        )
    }
}
struct ProductRow: Identifiable {
    let id = UUID().uuidString
    let title: String
    let products: [Product]
    
}
