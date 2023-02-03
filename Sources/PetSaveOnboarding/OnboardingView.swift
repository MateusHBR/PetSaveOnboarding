import SwiftUI

struct OnboardingView: View {
  let onboardingModel: OnboardingModel
  
  var body: some View {
    ZStack {
      RoundedRectangle(cornerRadius: 12, style: .circular)
        .fill(.white)
        .shadow(radius: 12)
        .padding(.horizontal, 20)
      VStack(alignment: .center) {
        Text(onboardingModel.title)
          .foregroundColor(.rwDark)
          .font(.largeTitle)
          .bold()
          .multilineTextAlignment(.center)
          .padding(.horizontal, 10)
        
        Text(onboardingModel.description)
          .foregroundColor(.rwDark)
          .multilineTextAlignment(.center)
          .padding([.top, .bottom], 10)
          .padding(.horizontal, 10)
        
        onboardingModel.image
          .resizable()
          .frame(width: 140, height: 140, alignment: .center)
          .foregroundColor(.rwDark)
          .aspectRatio(contentMode: .fit)
      }
      .padding()
    }
  }
}

struct OnboardingView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardingView(
      onboardingModel:OnboardingModel(
        title: "Welcome to\n PetSave",
        description:
          "Looking for a Pet?\n Then you're at the right place",
        image: .bird
      )
    )
  }
}
