//
//  SignUpView.swift
//  NutritionNest
//
//  Created by Pedro Ésli Vieira do Nascimento on 20/09/23.
//

import SwiftUI

struct SignUpView: View {
    
    @StateObject private var viewModel = SignUpViewModel()
    
    var body: some View {
        ZStack {
            Color.asset.background
                .ignoresSafeArea()
            VStack(spacing: 0) {
                Text("NutritionNest")
                    .font(.custom.inter.font(size: 25, relativeTo: .title))
                    .bold()
                    .padding(.top, 32)
                Text("Our AI friend is excited to assist you on your health journey!")
                    .font(.custom.inter.font(size: 15, relativeTo: .subheadline))
                    .foregroundColor(.asset.gray)
                    .multilineTextAlignment(.center)
                    .padding(.top, 10)
                    .padding(.horizontal, 30)
                TextField("", text: $viewModel.email, prompt: Text("Email"))
                    .primaryTextFieldStyle()
                    .padding(.top, 47)
                SecureField("", text: $viewModel.password, prompt: Text("Password"))
                    .primaryTextFieldStyle()
                    .padding(.top, 16)
                SmallRoundButton(title: "Sign Up") {
                    
                }
                .padding(.top, 22)
                OrText()
                .padding(.top, 32)
                HStack(spacing: 9) {
                    ProviderButton(image: .asset.facebookLogo) {
                        
                    }
                    ProviderButton(image: .asset.googleLogo) {
                        
                    }
                    ProviderButton(image: .asset.appleLogo) {
                        
                    }
                }
                .padding(.top, 22)
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(.horizontal, 35)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
