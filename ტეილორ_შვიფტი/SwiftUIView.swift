//
//  SwiftUIView.swift
//  ტეილორ_შვიფტი
//
//  Created by Giorgi Michitashvili on 5/22/24.
//

import SwiftUI

var newArr: [String] = ["ვასოს ინტერნეტი აღარ უჭედავს!", "დავითის ვიდეო ტუტორიალები ზი ბესთ!", "ბექა თეი-თეის შეხვდა აქციაზე!", "ვინ არის 31-ე სტუდენტი?!", "კაჰუტში ნუცამ 3190230-ჯერ გაიმარჯვა!", "ბარბარეს კამერა აღარ დაყვება!", "თორნიკეს კითხვები აღარ აქვს!"]

var quotesArr: [String] = ["We love property wrappers and closures", "VASO BEKA DAVIT", "Finished this at 7AM", "Kendrick >> TayTay"]

var colorsArr: [Int] = [0xFF844B, 0x7F36F7, 0xFF00FF, 0xC0C0C0, 0x00FFFF]

struct SwiftUIView: View {
    
    @State private var n: Int = 0
    @State private var k: Int = 0
    // V -> Vertical
    // H -> Horizontal
    // Z -> zIndex (back to front)
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(.all)
            Text("Hello Swiftie Beka")
                .padding(EdgeInsets(top: 53, leading: 18, bottom: 718, trailing: 49))
                .font(.custom("SF Pro Bold", size: 34))
                .zIndex(1.0)
            HStack (spacing: 0 ) {
                RoundedRectangle(cornerRadius: 18.0)
                    .fill(Color(hex: 0xF7BB36))
                    .frame(width: 165, height: 232)
                    .padding(EdgeInsets(top: 101, leading: 20, bottom: 479, trailing: 201))
                    .zIndex(1.0)
                    .overlay(
                        Image("music-picture")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 18.0))
                            .padding(EdgeInsets(top: 151, leading: 102, bottom: 479, trailing: 202))
                            .zIndex(1.0)
                    )
                    .overlay(
                        Text("\(quotesArr[k])")
                            .padding(EdgeInsets(top: 212, leading: 35, bottom: 512, trailing: 242))
                            .font(.custom("SF Pro Bold", size: 17))
                            .foregroundColor(.white)
                            .zIndex(2.0)
                    )
                    .overlay(
                        Text("ჯუზონები და რამე")
                            .padding(EdgeInsets(top: 147, leading: 35, bottom: 652, trailing: 268))
                            .font(.custom("SF Pro Display Bold", size: 9))
                            .foregroundColor(.white)
                            .zIndex(1.0)
                    )
                    .overlay(
                        Button(action: {
                            k = Int.random(in: 0..<quotesArr.count)
                        },
                            label: {
                            Image("mic.circle")
                                    .scaledToFill()
                                    .foregroundColor(.white)
                                
                            }).padding(EdgeInsets(top: 113, leading: 35, bottom: 667, trailing: 318))
                            .frame(width: 32, height: 32)
                            .zIndex(5.0)
                    
                    )
                VStack (spacing: 0) {
                    RoundedRectangle(cornerRadius: 18.0)
                        .fill(Color(hex: UInt(colorsArr[n])))
                        .frame(width: 165, height: 110)
                        .padding(EdgeInsets(top: 101, leading: -180, bottom: -100, trailing: 23))
                        .zIndex(1.0)
                        .overlay(
                            Image("chat-picture")
                                .padding(EdgeInsets(top: 128, leading: -85, bottom: -90, trailing: 23))
                                .zIndex(1.0)
                        )
                        .overlay(
                            Text("ჩატაობა")
                                .padding(EdgeInsets(top: 147, leading: -170, bottom: -53, trailing: 23))
                                .font(.custom("SF Pro Bold", size: 9))
                                .foregroundColor(.white)
                                .zIndex(1.0)
                        )
                        .overlay(
                            Button(action: {
                                n = Int.random(in: 0..<colorsArr.count)
                            }, label: {
                                Image("phone")
                            })
                            .padding(EdgeInsets(top: 113, leading: -170, bottom: -37, trailing: 23))
                            .foregroundColor(.white)
                            .zIndex(1.0)
                        )
                    RoundedRectangle(cornerRadius: 18.0)
                        .fill(Color(hex: 0x7F36F7))
                        .frame(width: 165, height: 110)
                        .padding(EdgeInsets(top: 113, leading: -180, bottom: 480 , trailing: 23))
                        .zIndex(1.0)
                        .overlay(
                            Image("media1")
                                .padding(EdgeInsets(top: 113, leading: -84, bottom: 465 , trailing: 23))
                                .zIndex(1.0)
                        )
                        .overlay(
                            Image("person")
                                .padding(EdgeInsets(top: 113, leading: -170, bottom: 525 , trailing: 23))
                                .foregroundColor(.white)
                                .zIndex(1.0)
                        )
                        .overlay(
                            Text("ცეცხლოვანი სიახლეები")
                                .padding(EdgeInsets(top: 160, leading: -170, bottom: 520 , trailing: 111))
                                .foregroundColor(.white)
                                .font(.custom("SF Pro Bold", size: 9))
                                .zIndex(1.0)
                        )

                }
            }
            ScrollView {
                VStack (spacing: 10) {
                            ForEach(0..<7) { index in
                                Rectangle()
                                    .fill(Color.white)
                                    .frame(width: 375, height: 60)
                                    .zIndex(1.0)
                                    .overlay(
                                        Text("\(newArr[index])")
                                            .foregroundColor(.black)
                                            .font(.custom("SF Pro Bold", size: 12.5))
                                    )
                                    .overlay(
                                    Circle()
                                        .fill(Color(hex: 0x6CC8FD))
                                        .alignmentGuide(.leading) { _ in 0 }
                                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 320))
                                        .overlay(
                                            Image("invoice")
                                                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 320))
                                        )
                                    )
                            } .zIndex(1.0)
                        }
                            
                    }.padding(EdgeInsets(top: 363, leading: 0, bottom: 0 , trailing: 0))
        }
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1.0) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

#Preview {
    SwiftUIView()
}
