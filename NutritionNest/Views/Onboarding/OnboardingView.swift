//
//  ContentView.swift
//  Loginpage
//
//  Created by Oliver on 2023/9/27.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        VStack {
            Text(Localization.Onboarding.welcome).font(.custom("Inter", size: 26)).bold().padding()
            Image.assets.logos.appLogo
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 460)
                .foregroundColor(.accentColor)
                .padding(.top, 10)

            Button {

            } label: {
                Text(Localization.Onboarding.signup)
                    .font(.custom("Inter", size: 18)).bold()
                    .padding(EdgeInsets(top: 28, leading: 26, bottom: 28, trailing: 26))
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(28)
                    .padding(.top, -5)
            }

            HStack {
                Text(Localization.Onboarding.account)
                    .font(.custom("Inter", size: 18))
                Button {

                } label: {
                    Text(Localization.Onboarding.login)
                        .font(.custom("Inter", size: 18))
                        .bold()
                        .foregroundColor(.black)
                        .underline()
                }
            }
            .padding(.top, 18)

        }
        .padding()
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
