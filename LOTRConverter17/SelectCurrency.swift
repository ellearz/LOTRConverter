//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Elnura Arzybaeva on 14.04.24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency:Currency
    @Binding var bottomCurrency:Currency
    
    
    var body: some View {
        
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                Text("Select the currency you are starting with:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                IconGrid(currency: $topCurrency)
                
                
                Text("Select the curreny you would like to convert to:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                IconGrid(currency: $bottomCurrency)
                
                
                
                
                Button("Done") {
                    dismiss() }
                
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}
    
 #Preview {
     SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.goldPenny))
}

