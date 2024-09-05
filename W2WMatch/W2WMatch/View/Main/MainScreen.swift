//
//  MainScreen.swift
//  jwt_authorizer
//
//  Created by Floron on 14.06.2024.
//

import SwiftUI

/*
struct MainScreen: View {
    
    @EnvironmentObject var mainVm: MainViewModel
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text("It's Main View")
            
            Spacer()
            
            Button("Запросить анкету") {
                mainVm.getAnketa()
            }
            
            Button("Запросить зарегистрированные бренды") {
                mainVm.getBrands()
            }
            
            Button("Запросить тарифные планы") {
                mainVm.getPaymentList()
            }
            
            ForEach(mainVm.paymentList) { payment in
                VStack {
                    HStack {
                        Text(payment.name)
                        Text("\(payment.cost)")
                    }
                }
            }
            
           
            
            Spacer()
            
            Button("Logout") {
                mainVm.logout()
            }
            
            Spacer()
        }
    }
}
*/


struct MainScreen: View {
    
    @EnvironmentObject var mainVm: MainViewModel
    
    var body: some View {
        
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Spacer().frame(height: 76)
                    
                    Image("logo horizontal")
                        .resizable()
                        .frame(width: 300, height: 54)
                        .background(Color.blue)
                        .cornerRadius(10)
                    
                    Spacer()
                    
                    Text("Наша миссия — сделать магию коллабораций доступной для малого и среднего бизнеса")
                        .foregroundColor(Color("W2wBlueColor"))
                        .font(.custom("PoiretOne-Regular", size: 25))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    
                    Text("Объединяем предприимчивых женщин и помогаем создавать нетривиальные и эффективные партнерства для роста бизнеса")
                        .fontWeight(.regular)
                        .foregroundColor(.w2WLightBlue)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding()
                        .lineLimit(4)
                    
                    Button(action: {
                        print("навигация на карточку брендов")
                    },
                           label: {
                        Text("Выбрать партнера")
                            .frame(width: geometry.size.width - 120, height: 45.0)
                            .font(.custom("PoiretOne-Regular", size: 18))
                            .foregroundStyle(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color("W2wLightBlueColor"))
                            }
                            .padding(.top)
                    })
                   
                    Image("main pic")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .padding()
                    
                   
                    
                    Text("От соперничества к сотрудничеству")
                        .foregroundColor(Color("W2wBlueColor"))
                        .font(.custom("PoiretOne-Regular", size: 25))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Image("helloArms")
                        .resizable()
                        .frame(width: 300, height: 100, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                        .padding()
                    
                    Text("W2W Match — это агрегатор брендов, с фильтрами по маркетинговым показателям. Мы создали сервис, который поможет женщинам-предпринимателям быстро искать релевантных партнёров, придумывать и реализовывать совместные проекты или создавать продукты в со-творчестве")
                        .fontWeight(.regular)
                        .foregroundColor(.w2WLightBlue)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding()
                        
                    Button(action: {
                        print("навигация на тарифы")
                        
                        mainVm.getPaymentList()
                    },
                           label: {
                        Text("Выбрать тариф")
                            .frame(width: geometry.size.width - 120, height: 45.0)
                            .font(.custom("PoiretOne-Regular", size: 18))
                            .foregroundStyle(.white)
                            .background {
                                RoundedRectangle(cornerRadius: 15)
                                    .fill(Color("W2wLightBlueColor"))
                            }
                            .padding(.top)
                    })
                    
                    ForEach(mainVm.paymentList) { payment in
                        VStack {
                            HStack {
                                Text(payment.name)
                                Text("\(payment.cost)")
                            }
                        }
                    }
                    
                    Image("collab")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                        .padding()
                    
                    Text("Свайпай влево и смотри примеры брендов, которые уже коллабятся")
                        .fontWeight(.regular)
                        .foregroundColor(.w2WLightBlue)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding()
                }
            }
        }
    }
}


#Preview {
    MainScreen()
        .environmentObject(MainViewModel())
}
