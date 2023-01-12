//
//  WeekDataView.swift
//  upwork
//
//  Created by Louis Cauret on 06/01/2023.
//

import SwiftUI

struct WeekDataView: View {
    
    private var viewModel: WeekDataViewModel
    
    init(viewModel: WeekDataViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView {
            Text("Cette semaine")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            VStack {
                HoursCard(image: "working-time", hours: 1250)
                HStack {
                    EmployeesCard(image: "division", numberEmployees: 5)
                    HoursPerEmployeeCard(image: "diagram", hours: 35)
                }
                HStack {
                    EmployeeInVacationCard(image: "vacation", numberOfEmployeeInVacation: 2)
                    NumberOFHoursPerDayCard(image: "clock", hours: 210)
                }
            }
        }
        .padding(.all, 20)
    }
}

struct CardModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
            .frame(height: 150)
    }
}

struct HoursCard: View {
    
    var image: String
    var hours: Double
    
    var body: some View {
        HStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .padding(.all, 20)
            VStack(alignment: .leading) {
                HStack {
                    Text(String.init(format: "%0.0f", hours))
                        .font(.system(size: 23, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Text("heures")
                        .font(.system(size: 23, weight: .bold, design: .default))
                    .foregroundColor(.white)                }
            }
            .padding(.trailing, 15)
            .padding(.leading, -15)
            Spacer()
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(CardModifier())
        .padding(.all, 10)
    }
}

struct EmployeesCard: View {
    
    var image: String
    var numberEmployees: Double
    
    var body: some View {
        VStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .padding(.top, 20)
                .padding(.leading, 50)
                .padding(.trailing, 50)
            Text(String.init(format: "%0.0f", numberEmployees))
                .font(.system(size: 24, weight: .bold, design: .default))
                .foregroundColor(.white)
            Text("Employé.e.(s)")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(minHeight: 150)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(CardModifier())
        .padding(.all, 10)
    }
}

struct HoursPerEmployeeCard: View {
    
    var image: String
    var hours: Double
    
    var body: some View {
        VStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .padding(.top, 20)
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .padding(.bottom, 5)
            HStack(alignment: .center) {
                Text(String.init(format: "%0.0f", hours))
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Text("heures par")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
            Text("employé.e.(s)")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(minHeight: 150)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(CardModifier())
        .padding(.all, 10)
    }
}

struct EmployeeInVacationCard: View {
    
    var image: String
    var numberOfEmployeeInVacation: Double
    
    var body: some View {
        VStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .padding(.top, 20)
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .padding(.bottom, 5)
            HStack(alignment: .center) {
                Text(String.init(format: "%0.0f", numberOfEmployeeInVacation))
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Text("employé.e.(s)")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
            Text("en congé(s)")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(minHeight: 150)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(CardModifier())
        .padding(.all, 10)
    }
}

struct NumberOFHoursPerDayCard: View {
    
    var image: String
    var hours: Double
    
    var body: some View {
        VStack(alignment: .center) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .padding(.top, 20)
                .padding(.leading, 50)
                .padding(.trailing, 50)
                .padding(.bottom, 5)
            HStack(alignment: .center) {
                Text(String.init(format: "%0.0f", hours))
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.white)
                Text("heures")
                    .font(.system(size: 18, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
            Text("par jour")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(.white)
                .padding(.bottom, 20)
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .frame(minHeight: 150)
        .background(Color(red: 32/255, green: 36/255, blue: 38/255))
        .modifier(CardModifier())
        .padding(.all, 10)
    }
}
