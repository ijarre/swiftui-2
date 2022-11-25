//
//  BottomSheet.swift
//  tugas-2
//
//  Created by Faizhar Riskisyah on 25/11/22.
//

import SwiftUI

struct BottomSheet: View {
    var body: some View {
        VStack{
            HStack{
                Text("Pink Beach, Flores").fontWeight(.bold)
                    .font(.title3)
                Spacer()
                HStack{
                    Image(systemName:"star.fill").symbolRenderingMode(.multicolor)
                    Text("4.8").fontWeight(.semibold)
                }
            }//header
            HStack{
                Banner(imageName: "figure.walk.motion", imageColor: .green, bannerLabel: "Walk")
                Banner(imageName:"fork.knife.circle.fill",imageColor: .orange, bannerLabel: "Food" )
                Banner(imageName:"house.fill",imageColor: .blue, bannerLabel: "Stays")
                Banner(imageName: "sailboat.fill", imageColor: .purple, bannerLabel: "Ride")
            }
            
            VStack(alignment:.leading, spacing:4){
                Text("About Destination").fontWeight(.semibold)
                
                Text("Pink Beach, or Pantai Merah, as it aptly named, is one of seven pink beaches on the planet. This was awesome")
            }
         
            HStack{
                Text("$81,39").fontWeight(.bold)
                    .font(.title3).foregroundColor(.blue)
                Spacer()
                Button{
                    
                } label: {
                    HStack{
                        Image(systemName: "bag")
                        Text("Join Tour")
                    }
                    .padding()
                    .foregroundColor(.white)
                    
                }.background(LinearGradient(colors:[.pink,.purple], startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30)
            }
        }.padding()
    }
}
struct Banner: View {
    var imageName:String
    var imageColor:Color?
    var bannerLabel:String
    var body: some View{
        ZStack{
        Rectangle().frame(width:70,height:85)
            .foregroundColor(.blue)
            .opacity(0.1)
            VStack(spacing:4){
            Image(systemName: imageName).font(.title2)
                .foregroundColor(imageColor)
                Text(bannerLabel)
            }
            
        }
    }
}

struct BottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheet()
    }
}
