//
//  AboutYorselfScreen.swift
//  W2WMatch
//
//  Created by Игорь Крысин on 16.06.2024.
//

import Foundation
import SwiftUI

struct AboutYorselfScreen: View {
    
    @State var user = AutorizedUser().yourselfinfo
    @State var brand = CreateBrandRequestBody()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Супер!\nРасскажите о Вашей аудитории")
                    .foregroundColor(Color("W2wBlueColor"))
                    .font(.custom("PoiretOne-Regular", size: 34))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 50)

                Text("Расскажите нам о ядре Вашей целевовй аудитории")
                    .font(Font.custom("Manrope", size: 14))
                    .tracking(0.28)
                    .foregroundColor(Color("W2wBlueColor"))
                    .padding(.bottom, 8)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                HStack {
                    TextField(text: $user.gender.animation()) {
                        Text("Пол")
                            .font(Font.custom("Manrope", size: 14).weight(.light))
                            .lineSpacing(20)
                            .foregroundColor(Color("W2wLightBlueColor"))
                    }
                    .textInputAutocapitalization(.never)
                    .keyboardType(.default)
                    .disableAutocorrection(true)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 125, height: 45)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(
                        color: Color(red: 0.46, green: 0.54, blue: 0.71, opacity: 0.2), radius: 12, x: 3, y: 3
                    )
                    .foregroundStyle(Color("W2wLightBlueColor"))
//                    .padding()
//                    .overlay( /// apply a rounded border
//                        RoundedRectangle(cornerRadius: 15)
//                    .stroke(Color("FrameRegistration"), lineWidth: 2))
//                    .foregroundStyle(Color("FrameRegistration"))
                    
                    TextField(text: $user.age.animation()) {
                        Text("Возраст")
                            .font(Font.custom("Manrope", size: 14).weight(.light))
                            .lineSpacing(20)
                            .foregroundColor(Color("W2wLightBlueColor"))
                        
                    }
                    .textInputAutocapitalization(.never)
                    .keyboardType(.default)
                    .disableAutocorrection(true)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 125, height: 45)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(
                        color: Color(red: 0.46, green: 0.54, blue: 0.71, opacity: 0.2), radius: 12, x: 3, y: 3
                    )
                    .foregroundStyle(Color("W2wLightBlueColor"))
//                    .padding()
//                    .overlay( /// apply a rounded border
//                        RoundedRectangle(cornerRadius: 15)
//                    .stroke(Color("FrameRegistration"), lineWidth: 2))
//                    .foregroundStyle(Color("FrameRegistration"))

                }
                .padding(.bottom, 8)
                
                HStack {
                    TextField(text: $user.incomeLevel.animation()) {
                        Text("Ур. дохода")
                            .font(Font.custom("Manrope", size: 14).weight(.light))
                            .lineSpacing(20)
                            .foregroundColor(Color("W2wLightBlueColor"))
                            .lineLimit(1)
                            
                    }
                    .textInputAutocapitalization(.never)
                    .keyboardType(.default)
                    .disableAutocorrection(true)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 125, height: 45)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(
                        color: Color(red: 0.46, green: 0.54, blue: 0.71, opacity: 0.2), radius: 12, x: 3, y: 3
                    )
                    .foregroundStyle(Color("W2wLightBlueColor"))
//                    .padding()
//                    .overlay( /// apply a rounded border
//                        RoundedRectangle(cornerRadius: 15)
//                    .stroke(Color("FrameRegistration"), lineWidth: 2))
//                    .foregroundStyle(Color("FrameRegistration"))
                    
                    TextField(text: $user.geographic.animation()) {
                        Text("ГЕО")
                            .font(Font.custom("Manrope", size: 14).weight(.light))
                            .lineSpacing(20)
                            .foregroundColor(Color("W2wLightBlueColor"))
                        
                    }
                    .textInputAutocapitalization(.never)
                    .keyboardType(.default)
                    .disableAutocorrection(true)
                    .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                    .frame(width: 125, height: 45)
                    .background(.white)
                    .cornerRadius(12)
                    .shadow(
                        color: Color(red: 0.46, green: 0.54, blue: 0.71, opacity: 0.2), radius: 12, x: 3, y: 3
                    )
                    .foregroundStyle(Color("W2wLightBlueColor"))
//                    .padding()
//                    .overlay( /// apply a rounded border
//                        RoundedRectangle(cornerRadius: 15)
//                    .stroke(Color("FrameRegistration"), lineWidth: 2))
//                    .foregroundStyle(Color("FrameRegistration"))
                }
                .padding(.bottom, 8)
                
                TextField(text: $user.interests.animation()) {
                    Text("Интереcы")
                        .font(Font.custom("Manrope", size: 14).weight(.light))
                        .lineSpacing(20)
                        .foregroundColor(Color("W2wLightBlueColor"))
                    
                }
                .textInputAutocapitalization(.never)
                .keyboardType(.default)
                .disableAutocorrection(true)
                .padding(EdgeInsets(top: 12, leading: 16, bottom: 12, trailing: 16))
                .frame(width: 255, height: 45)
                .background(.white)
                .cornerRadius(12)
                .shadow(
                    color: Color(red: 0.46, green: 0.54, blue: 0.71, opacity: 0.2), radius: 12, x: 3, y: 3
                )
                .foregroundStyle(Color("W2wLightBlueColor"))
//                .padding()
//                .overlay( /// apply a rounded border
//                    RoundedRectangle(cornerRadius: 15)
//                .stroke(Color("FrameRegistration"), lineWidth: 2))
//                .foregroundStyle(Color("FrameRegistration"))

                NavigationLink(destination: InterectionFormatScreen(brand: brand)) {
                    Text("Далее")
                }
                .frame(width: geometry.size.width - 120, height: 45.0)
                .foregroundStyle(.white)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("W2wLightBlueColor"))
                }
                .padding(.top)
                .onTapGesture {
                   // print(user)
                    brand.targetAudience = user.gender + user.age + user.incomeLevel + user.geographic + user.interests
                    //print(brand.targetAudience)
                }
                
                Image("Vector")
                    .padding(.top, 30.0)
                
                Spacer()
            }
            .frame(width: geometry.size.width - 120, height: geometry.size.height)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .navigationArrowLef()
        .background(Color(red: 248, green: 248, blue: 248))
    }
}

#Preview {
    AboutYorselfScreen()
}
