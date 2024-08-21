//
//  RegistrationStep11.swift
//  W2WMatch
//
//  Created by Floron on 22.06.2024.
//

import SwiftUI

struct RegistrationStep11: View {
    
    @State var brand = CreateBrandRequestBody()
    
    let collaborationInterest = ["Я открыта к экспериментам и категория партнера мне не важна",
                                 "Образование и эксперты",
                                 "HoReCa",
                                 "Украшения",
                                 "Услуги",
                                 "Товары для дома",
                                 "Красота и здоровье",
                                 "Товары для детей",
                                 "Одежда и обувь"]

    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("С кем бы Вы хотели создать коллаборацию?")
                    .foregroundColor(Color("W2wBlueColor"))
                    .font(.custom("PoiretOne-Regular", size: 34))
                    .multilineTextAlignment(.center)
                    .frame(width: geometry.size.width - 80)
                    .frame(maxWidth: .infinity)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 18)
                
                Text("С бизнесом из какой категории вам было бы интересно сделать коллаборацию?")
                    .font(Font.custom("Manrope", size: 14))
                    .tracking(0.28)
                    .foregroundColor(Color("W2wBlueColor"))
                    .padding(.bottom, 8)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("Выберите один или несколько вариантов")
                    .font(Font.custom("Manrope", size: 12))
                    .tracking(0.28)
                    .foregroundColor(Color("SecondaryText"))
                    .padding(.bottom, 8)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView {
                    ForEach(collaborationInterest, id: \.self) { option in
                        TableRow(text: option)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }.scrollIndicators(.hidden)
                
                NavigationLink(destination: LastAuthScreen(brand: brand)) {
                    Text("Далее")
                }
                .frame(width: geometry.size.width - 120, height: 45.0)
                .foregroundStyle(.white)
                .background {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("W2wLightBlueColor"))
                }
                .padding(.top)
                
                Image("Vector")
                    .padding(.top, 30)
                
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
    RegistrationStep11()
}
