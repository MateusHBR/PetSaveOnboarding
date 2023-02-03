import SwiftUI

struct Pet: Identifiable {
  let id = UUID()
  let image: Image
  let position: CGPoint
}

extension Pet {
  static let backgroundPets: [Pet] = {
    let bounds = UIScreen.main.bounds
    
    return [
      Pet(image: .bird,
          position: .init(x: bounds.minX + 50, y: 20)),
      Pet(image: .catPurple,
          position: .init(x: bounds.maxX, y: bounds.maxY / 2)),
      Pet(image: .catPurr,
          position: .init(x: bounds.maxX, y: bounds.maxY - 100)),
      Pet(image: .chameleon,
          position: .init(x: bounds.minX, y: bounds.maxY / 2)),
      Pet(image: .dogBoneStand,
          position: .init(x: bounds.minX, y: bounds.maxY / 1.5)),
      Pet(image: .dogBone,
          position: .init(x: bounds.maxX - 50, y: 50)),
      Pet(image: .dogTennisBall,
          position: .init(x: bounds.minX, y: bounds.maxY - 10))
    ]
  }()
}
