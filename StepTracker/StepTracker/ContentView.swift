//
//  ContentView.swift
//  StepTracker
//
//  Created by eric hayes on 8/10/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(spacing: 20) {
          VStack {
            HStack {
              VStack(alignment: .leading) {
                Label("Steps", systemImage: "figure.walk")
                  .font(.title3.bold())
                  .foregroundStyle(.pink)
                Text("Avg: 10k Steps")
                  .font(.caption)
                  .foregroundStyle(.secondary)
              }
              
              Spacer()
              
              Image(systemName: "chevron.right")
                .foregroundColor(.secondary)
            }
            .padding(.bottom, 12)
            
            RoundedRectangle(cornerRadius: 12)
              .foregroundStyle(.secondary)
              .frame(height: 150)
          }
          .padding()
          .background(RoundedRectangle(cornerRadius: 12.0).fill(Color(.secondarySystemBackground)))
          
          VStack(alignment: .leading) {
            VStack(alignment: .leading) {
              Label("Averages", systemImage: "calendar")
                .font(.title3.bold())
                .foregroundStyle(.pink)
              Text("Last 28 days")
                .font(.caption)
                .foregroundStyle(.secondary)
            }
            .padding(.bottom, 12)
            
            RoundedRectangle(cornerRadius: 12)
              .foregroundStyle(.secondary)
              .frame(height: 240)
          }
          .padding()
          .background(RoundedRectangle(cornerRadius: 12.0).fill(Color(.secondarySystemBackground)))
        }
      }
      .padding()
      .navigationTitle("Dashboard")
    }
  }
}

#Preview {
  ContentView()
}
