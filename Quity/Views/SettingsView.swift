//
//  SettingsView.swift
//  Quity
//
//  Created by Zaid Dahir on 2024-08-27.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var selectedTheme = "System"
    @State private var selectedDay = "Saturday"
    @State var sounds = false
    @State var showCurrentStreak = false
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Constants.pickerGreen)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Constants.AppBlack)], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor(Constants.AppWhite)], for: .normal)
    }
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(spacing: 20) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Theme")
                        Picker("Please choose a color", selection: $selectedTheme) {
                            ForEach(Constants.theme, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Week Start On")
                        Picker("Please choose a color", selection: $selectedDay) {
                            ForEach(Constants.startDays, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    Toggle("Sounds", isOn: $sounds)
                        .padding(.trailing, 4)
                    
                    Toggle("Show Current Streak", isOn: $showCurrentStreak)
                        .padding(.trailing, 4)
                    
                    VStack(spacing: 20) {
                        SettingsOptions(image: Image(systemName: "star.fill"), text: "Rate The App")
                        SettingsOptions(image: Image(.shareNodes), text: "Share with friends")
                        SettingsOptions(image: Image(.messageBubble), text: "Send Feedback")
                        SettingsOptions(image: Image(.lock), text: "Privacy Policy")
                        SettingsOptions(image: Image(.person), text: "Terms of Service")
                    }
                    .padding(.top, 24)
                    
                }
            }
            .padding(.horizontal, 16)
            .padding(.top)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
        .navigationTitle("Settings")
        .navigationBarTitleDisplayMode(.inline)
        .tint(.green)
    }
}

struct SettingsOptions: View {
    var image: Image
    var text: String
    var body: some View {
        Button {
            
        } label: {
            HStack {
                ZStack {
                    Rectangle()
                        .frame(width: 30, height: 30)
                        .cornerRadius(12)
                        .foregroundColor(Constants.grayBackground)
                    image
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 15, height: 15)
                }
                
                Text(text)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 10, height: 15)
            }
            .padding(.horizontal, 16)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    SettingsView()
//    SettingsOptions(image: Image(systemName: "star.fill"), text: "Rate The App")
}
