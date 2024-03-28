//
//  ProfileScreen.swift
//  BookMyPlace
//
//  Created by Vinayak Bora on 28/03/24.
//

import SwiftUI

struct ProfileView: View {
    @State var isPresented = false
    
    var body: some View {
        VStack {
            VStack {
                Header()
                ProfileText()
            }
        }
    }
}


struct Header: View {
    var body: some View {
        ZStack(alignment: .top) {
            Rectangle()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 150)
                .foregroundColor(.primaryLightBlue)
            Image("one_bajaj_logo")
                .resizable()
                .frame(width: 250, height: 250)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
        }
    }
}


struct ProfileText: View {
    @State var fullName: String  = "Vinayak Bora"
    @State var employeeId : String = "1001760"
    @State var companyName: String = "Bajaj Markets"
    @State  var campusName: String = "Smartworks"
    
    var body: some View {
        Spacer()
        VStack(spacing: 50) {
            VStack {
                Text("Employee Name")
                    .bold()
                    .font(.subheadline)
                Text(fullName)
                    .font(.title)
            }
            
            VStack {
                Text("Employee ID")
                    .bold()
                    .font(.subheadline)
                Text(employeeId)
                    .font(.title)
            }
            
            VStack {
                Text("Company Name")
                    .bold()
                    .font(.subheadline)
                Text(companyName)
                    .font(.title)
            }
            
            VStack {
                Text("Campus Name")
                    .bold()
                    .font(.subheadline)
                Text(campusName)
                    .font(.title)
            }
        }
        
        .padding()
        Spacer()
    }
}


#Preview {
    ProfileView()
}