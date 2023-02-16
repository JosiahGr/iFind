//
//  PopUpView.swift
//  iFind
//
//  Created by Josiah Green on 2/13/23.
//

import SwiftUI

struct PopUpView: View {
    
    @State var musicToggle: Bool = true
    @State var fxToggle: Bool = true
    @State var timerToggle: Bool = false
    
    let didClose: () -> Void
    
    var body: some View {
        VStack(spacing: .zero) {
            VStack {
                Toggle(
                    isOn: $musicToggle,
                    label: {
                        Text("Music")
                    })
                .toggleStyle(SwitchToggleStyle(tint: Color.green))
                .font(.title3)
                
                Toggle(
                    isOn: $fxToggle,
                    label: {
                        Text("Sound effects")
                    })
                .toggleStyle(SwitchToggleStyle(tint: Color.green))
                .font(.title3)
                
                Toggle(
                    isOn: $timerToggle,
                    label: {
                        Text("15 minute timer")
                    })
                .toggleStyle(SwitchToggleStyle(tint: Color.green))
                .font(.title3)
                .padding(.bottom, 50)
            }
        }
        .frame(maxWidth: 400)
        .padding(.horizontal, 25)
        .padding(.vertical, 60)
        .multilineTextAlignment(.center)
        .background(background)
        .overlay(alignment: .bottom) {
            Button("Restore purchases", action: {
                
                // TODO: Handle restore purchases
                
            })
            .padding(.bottom, 25)
        }
        .overlay(alignment: .topTrailing) {
            close
            
            // TODO: Dismiss should save the last state of rows
        }
        .transition(.move(edge: .bottom))
        .overlay(alignment: .top) {
            title
                .padding(.vertical, 15)
        }
    }
}

struct PopUpView_Previews: PreviewProvider {
    static var previews: some View {
        PopUpView {}
            .padding()
            .background(.blue)
            .previewLayout(.sizeThatFits)
    }
}

private extension PopUpView {
    
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

private extension PopUpView {
    
    var title: some View {
        Text("Settings")
            .font(
                .system(size: 24,
                        weight: .bold,
                        design: .rounded)
            )
    }
    var row: some View {
        Text("Lorem Ipsum bla bla bla bla bla Lorem Ipsum bla bla bla bla bla Lorem Ipsum bla bla bla bla bla Lorem Ipsum bla bla bla bla bla")
            .font(.callout)
            .foregroundColor(.black.opacity(0.8))
    }
}

// MARK: https://stackoverflow.com/questions/56760335/round-specific-corners-swiftui

struct RoundedCorners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height

                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}


