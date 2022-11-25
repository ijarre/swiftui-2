//
//  ContentView.swift
//  tugas-2
//
//  Created by Faizhar Riskisyah on 25/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert: Bool = false
    @State private var showingSheet: Bool = false
    
    var body: some View {
        ZStack{
            Image("go-to-beach").resizable().ignoresSafeArea()
            Color(.black).ignoresSafeArea().opacity(0.4)
            VStack(spacing:40){
                HStack{
                    Button{
                        showingAlert.toggle()
                    }label: {
                    ZStack{
                        Circle().frame(width: 40).opacity(0.2).foregroundColor(.black)
                        Image(systemName: "cloud.sun.fill").symbolRenderingMode(.multicolor)
                    }
                    }.alert("Not yet available", isPresented: $showingAlert, actions: {}, message: {
                        Text("Currently on active development")
                    })
                    
                    Spacer()
                    Text("Travel").foregroundColor(.white)
                    Spacer()
                    Button{
                        showingSheet.toggle()
                    }label: {
                    ZStack{
                        Circle()
                            .frame(width:40)
                            .opacity(0.3)
                            .foregroundColor(.black)
                        Image(systemName: "cart.badge.plus")
                            .symbolRenderingMode(.multicolor)
                            .foregroundColor(.white)
                    }
                    }.sheet(isPresented: $showingSheet, content: {
                        VStack{
                            BottomSheet()
                        }.presentationDetents([.fraction(0.4),.medium])
                    })
                }
                .padding(.leading, 40)
                .padding(.trailing,40)
                
                VStack(alignment:.leading, spacing: 16){
                    
                Text("Start your \nAdventure \nand Go \nTravel Now")
                    .foregroundColor(.white)
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.heavy)
                Text("Discover local destinations beauty with \nBluesky and travel with pride").foregroundColor(.white)
                    .font(.system(.body, design:.rounded))
                    .fontWeight(.medium)
                }
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
