//
//  ContentView.swift
//  Facebook Interface
//
//  Created by icaro on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var HSC
    
    @State var Email: String = ""
    @State var Passowrd: String = ""
    
    var body: some View {
        ZStack {
            
            Color("BackgroundColor").ignoresSafeArea()
            
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: self.HSC == .compact ? 300 : 550)
            
            Spacer().frame(height: self.HSC == .compact ? 64 : 120)
            
        VStack {
                TextField("Email", text: $Email)
                    .padding()
                    .frame(width: self.HSC == .compact ? 370 : 650, height: self.HSC == .compact ? 65 : 90)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.top, 24)
                    .padding(.bottom, 12)
                    .keyboardType(.emailAddress)
                    
                SecureField("Passowrd", text: $Passowrd)
                    .padding()
                    .frame(width: self.HSC == .compact ? 370 : 650, height: self.HSC == .compact ? 65 : 90)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(.top, 24)
                    .padding(.bottom, 12)
                
            Spacer().frame(height: 40)
            
            Button(action:{}) {
                Text("Login")
                    .font(.title3)
                    .foregroundColor(Color.white)
                    .bold()
                    .padding(20)
                    .frame(width: self.HSC == .compact ? 370 : 650, height: self.HSC == .compact ? 65 : 90)
                    .background(Color("ButtonColor"))
                    .cornerRadius(20) }
        
            }
            .padding(.horizontal)
            
            Spacer().frame(height: 64)
            
        HStack{
                Text("Don't have an account?")
                    .foregroundColor(.white)
                    .font(.custom("Avenir", size: self.HSC == .compact ? 19 : 24))
                Button("Sign up") { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/ }
                    .foregroundColor(Color("TextColor"))
                    .font(.custom("Avenir", size: self.HSC == .compact ? 19 : 24))
            }
            Button("Forgot your password") { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/ }
                .foregroundColor(Color("TextColor"))
                .font(.custom("Avenir", size: self.HSC == .compact ? 19 : 24))
 
        }
        .padding(.horizontal)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
