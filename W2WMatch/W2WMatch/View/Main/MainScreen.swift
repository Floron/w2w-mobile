//
//  MainScreen.swift
//  jwt_authorizer
//
//  Created by Floron on 14.06.2024.
//

import SwiftUI

struct MainScreen: View {
    
    @EnvironmentObject var mainVm: MainViewModel
    
    var body: some View {
        
        VStack {
            
            Text("It's Main View")
            
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
        }
    }
}

#Preview {
    MainScreen()
}
