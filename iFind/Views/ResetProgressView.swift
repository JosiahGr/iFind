//
//  ResetProgressView.swift
//  iFind
//
//  Created by Josiah Green on 2/16/23.
//

import SwiftUI

struct ResetProgressView: View {
    @State var resetProgress: Bool = true
    
    let didClose: () -> Void
    
    var body: some View {
        VStack(spacing: .zero) {
                Text("Would you like to reset all current progress with your books? \n \nThis cannot be undone.")
                .font(.title3)
        }
        .frame(maxWidth: 400)
        .padding(.horizontal, 25)
        .padding(.vertical, 70)
        .multilineTextAlignment(.center)
        .background(background)
        
        .overlay(alignment: .bottom) {
            Button(action: { }) {
                Text("Reset Progress")
                    .bold()
                    .padding(8)
            }
            .padding(10)
            .buttonStyle(.borderedProminent)
            .tint(.red)
            .cornerRadius(50)
        }
        
        .overlay(alignment: .topTrailing) {
            close
        }
        .transition(.move(edge: .bottom))
        .overlay(alignment: .top) {
            title
                .padding(.vertical, 15)
        }
    }
}

struct ResetProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ResetProgressView {}
            .padding()
            .background(.blue)
            .previewLayout(.sizeThatFits)
    }
}

private extension ResetProgressView {
    
    var close: some View {
        Button {
            didClose()
        } label: {
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .symbolVariant(.circle.fill)
                    .font(
                        .system(size: 35,
                                weight: .bold,
                                design: .rounded)
                    )
                    .foregroundStyle(.gray.opacity(0.6))
                    .padding(8)
            }
        }
    }
    
    var background: some View {
        RoundedCorners(color: .white,
                       tl: 20,
                       tr: 20,
                       bl: 20,
                       br: 20)
        .shadow(color: .black.opacity(0.2),
                    radius: 3)
    }
}

private extension ResetProgressView {
    
    var title: some View {
        Text("Reset Progress")
            .font(
                .system(size: 24,
                        weight: .bold,
                        design: .rounded)
            )
    }
    var row: some View {
        Text("lorem")
            .font(.callout)
            .foregroundColor(.black.opacity(0.8))
    }
}
