 //
//  ContentView.swift
//  WeatherApp
//
//  Created by Norah Binny on 2/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:Gradient(colors:[.blue,.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack(spacing: 8){
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("76°")
                        .font(.system(size: 70, weight:.medium))
                        .foregroundColor(.white)
                }
                .padding(.bottom, 40)
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek:"TUE", imageName: "cloud.sun.fill", temperature: "76°")
                    WeatherDayView(dayOfWeek:"WED", imageName: "sun.max.fill", temperature: "73°")
                    WeatherDayView(dayOfWeek:"THU", imageName: "wind.snow", temperature: "75°")
                    WeatherDayView(dayOfWeek:"FRI", imageName: "sunset.fill", temperature: "76°")
                    WeatherDayView(dayOfWeek:"SAT", imageName: "snow", temperature: "25°")
                  
                }
                Spacer()
                
                Button{
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20,weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
            
            }
        }
    }


struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: String
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height:40)
            
            Text(temperature)
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
