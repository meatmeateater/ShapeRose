import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // MARK: - 全螢幕背景
            Color("BgGold")
                .ignoresSafeArea()

            // MARK: - 背景柔光
            Circle()
                .fill(
                    RadialGradient(
                        colors: [
                            Color.white.opacity(0.45),
                            Color("GlowYellow").opacity(0.16),
                            Color.clear
                        ],
                        center: .center,
                        startRadius: 20,
                        endRadius: 230
                    )
                )
                .frame(width: 430, height: 430)
                .offset(y: -70)

            VStack(spacing: 6) {

                Spacer()

                // MARK: - 主作品
                ZStack {

                    // 花朵後方柔光
                    Circle()
                        .fill(
                            RadialGradient(
                                colors: [
                                    Color("RosePink").opacity(0.14),
                                    Color.clear
                                ],
                                center: .center,
                                startRadius: 35,
                                endRadius: 165
                            )
                        )
                        .frame(width: 310, height: 310)
                        .offset(y: -105)

                    // 整株玫瑰
                    RoseView()

                    // 花盆
                    PotView()
                        .offset(y: 208)
                }
                .frame(width: 350, height: 510)

                Spacer()

                Spacer()
                    .frame(height: 18)
            }
            .padding(.horizontal)
        }
    }
}


// MARK: - 整株玫瑰
struct RoseView: View {
    var body: some View {
        ZStack {

            // =====================================================
            // MARK: 花莖 - 半透明柔光質感
            // =====================================================

            ZStack {

                // 主莖
                Capsule()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color("LeafLight").opacity(0.76),
                                Color("StemGreen").opacity(0.88),
                                Color("StemDark").opacity(0.96)
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )

                // 左側高光
                Capsule()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.white.opacity(0.3),
                                Color.white.opacity(0.20),
                                Color.clear
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 5, height: 235)
                    .offset(x: -3)
                    .blur(radius: 1.2)

                // 中央透光帶
                Capsule()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.clear,
                                Color.white.opacity(0.11),
                                Color.clear
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 6, height: 225)
                    .offset(x: -1)
                    .blur(radius: 1)

                // 右側暗部
                Capsule()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.clear,
                                Color("StemDark").opacity(0.23)
                            ],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .frame(width: 5, height: 238)
                    .offset(x: 4)
                    .blur(radius: 1)
            }
            .frame(width: 15, height: 250)
            .offset(y: 87)
            .shadow(
                color: Color("StemDark").opacity(0.12),
                radius: 4,
                x: 2,
                y: 3
            )


            


            // =====================================================
            // MARK: 左葉
            // =====================================================

            LeafView()
                .rotationEffect(.degrees(153))
                .offset(x: -50, y: 60)


            // =====================================================
            // MARK: 右葉
            // =====================================================

            LeafView()
                .scaleEffect(x: -1, y: 1)
                .rotationEffect(.degrees(29))
                .offset(x: 51, y: 110)


            // =====================================================
            // MARK: 最外層花瓣
            // =====================================================

            RosePetal(
                width: 88,
                height: 66,
                angle: -24,
                x: -36,
                y: -61,
                brightness: 0.93
            )

            RosePetal(
                width: 86,
                height: 65,
                angle: 26,
                x: 36,
                y: -62,
                brightness: 0.90
            )

            RosePetal(
                width: 96,
                height: 64,
                angle: -3,
                x: 0,
                y: -39,
                brightness: 0.82
            )


            // =====================================================
            // MARK: 後方高層花瓣
            // =====================================================

            RosePetal(
                width: 82,
                height: 91,
                angle: -27,
                x: -32,
                y: -82,
                brightness: 1.00
            )

            RosePetal(
                width: 80,
                height: 89,
                angle: 29,
                x: 32,
                y: -84,
                brightness: 0.94
            )

            RosePetal(
                width: 52,
                height: 82,
                angle: 3,
                x: 0,
                y: -98,
                brightness: 1.03
            )


            // =====================================================
            // MARK: 中層花瓣
            // =====================================================

            RosePetal(
                width: 69,
                height: 78,
                angle: -32,
                x: -24,
                y: -70,
                brightness: 0.96
            )

            RosePetal(
                width: 66,
                height: 76,
                angle: 29,
                x: 23,
                y: -70,
                brightness: 0.90
            )

            RosePetal(
                width: 61,
                height: 71,
                angle: 5,
                x: -1,
                y: -65,
                brightness: 0.86
            )


            // =====================================================
            // MARK: 內層花瓣
            // =====================================================

            RosePetal(
                width: 46,
                height: 60,
                angle: -34,
                x: -14,
                y: -72,
                brightness: 0.89
            )

            RosePetal(
                width: 43,
                height: 57,
                angle: 34,
                x: 13,
                y: -72,
                brightness: 0.84
            )

            RosePetal(
                width: 34,
                height: 51,
                angle: -7,
                x: 0,
                y: -73,
                brightness: 0.81
            )


            // =====================================================
            // MARK: 花心捲曲小花瓣
            // =====================================================

            RosePetal(
                width: 29,
                height: 42,
                angle: -44,
                x: -8,
                y: -73,
                brightness: 0.84
            )

            RosePetal(
                width: 27,
                height: 40,
                angle: 43,
                x: 8,
                y: -74,
                brightness: 0.80
            )

            RosePetal(
                width: 23,
                height: 37,
                angle: -21,
                x: -5,
                y: -75,
                brightness: 0.78
            )

            RosePetal(
                width: 21,
                height: 35,
                angle: 24,
                x: 5,
                y: -75,
                brightness: 0.76
            )

            RosePetal(
                width: 16,
                height: 30,
                angle: 5,
                x: 0,
                y: -76,
                brightness: 0.78
            )


            // =====================================================
            // MARK: 裝飾亮點 Circle
            // =====================================================

            Circle()
                .fill(Color.white.opacity(0.55))
                .frame(width: 7, height: 7)
                .blur(radius: 0.4)
                .offset(x: -105, y: -155)


            // =====================================================
            // MARK: 裝飾 Rectangle
            // =====================================================

            Rectangle()
                .fill(Color.white.opacity(0.45))
                .frame(width: 16, height: 3)
                .cornerRadius(2)
                .rotationEffect(.degrees(-35))
                .offset(x: 108, y: -137)
        }
    }
}


// MARK: - 花瓣元件
struct RosePetal: View {
    let width: CGFloat
    let height: CGFloat
    let angle: Double
    let x: CGFloat
    let y: CGFloat
    let brightness: Double

    var body: some View {
        ZStack {

            // MARK: 花瓣本體
            Ellipse()
                .fill(
                    LinearGradient(
                        gradient: Gradient(stops: [

                            // 左上紅色
                            .init(
                                color: Color("RoseTopRed"),
                                location: 0.00
                            ),

                            // 藍色
                            .init(
                                color: Color("RoseBlue"),
                                location: 0.24
                            ),

                            // 紫色
                            .init(
                                color: Color("RosePurple"),
                                location: 0.58
                            ),

                            // 右下紅紫色
                            .init(
                                color: Color("RoseRedPurple"),
                                location: 1.00
                            )
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .brightness(brightness - 1.0)
                .shadow(
                    color: Color("RoseDark").opacity(0.18),
                    radius: 3.5,
                    x: 1,
                    y: 2.5
                )


            // MARK: 花瓣左上高光
            Ellipse()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.white.opacity(0.12),
                            Color.white.opacity(0.03),
                            Color.clear
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(
                    width: width * 0.25,
                    height: height * 0.40
                )
                .blur(radius: 3.8)
                .offset(
                    x: -width * 0.15,
                    y: -height * 0.13
                )
        }
        .frame(width: width, height: height)
        .rotationEffect(.degrees(angle))
        .offset(x: x, y: y)
    }
}


// MARK: - 半透明葉子
struct LeafView: View {
    var body: some View {
        ZStack {

            // =====================================================
            // MARK: 葉片主體
            // =====================================================

            Ellipse()
                .fill(
                    LinearGradient(
                        colors: [
                            Color("LeafLight").opacity(0.78),
                            Color("LeafGreen").opacity(0.75),
                            Color("StemDark").opacity(0.80)
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 92, height: 42)


            // =====================================================
            // MARK: 葉片內部透光
            // =====================================================

            Ellipse()
                .fill(
                    RadialGradient(
                        colors: [
                            Color.white.opacity(0.26),
                            Color("LeafLight").opacity(0.10),
                            Color.clear
                        ],
                        center: .topLeading,
                        startRadius: 2,
                        endRadius: 58
                    )
                )
                .frame(width: 84, height: 34)
                .offset(x: -3, y: -3)
                .blur(radius: 1.2)


            // =====================================================
            // MARK: 葉片斜向柔光
            // =====================================================

            Ellipse()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.white.opacity(0.18),
                            Color.white.opacity(0.05),
                            Color.clear
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 70, height: 25)
                .offset(x: -8, y: -4)
                .blur(radius: 2)


            // =====================================================
            // MARK: 葉脈 Capsule
            // =====================================================

            Capsule()
                .fill(
                    LinearGradient(
                        colors: [
                            Color.white.opacity(0.42),
                            Color.white.opacity(0.18)
                        ],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
                .frame(width: 51, height: 2.2)
                .rotationEffect(.degrees(-2))
                .offset(x: -2)


            // =====================================================
            // MARK: 葉片邊緣高光
            // =====================================================

            Ellipse()
                .stroke(
                    LinearGradient(
                        colors: [
                            Color.white.opacity(0.25),
                            Color.white.opacity(0.05),
                            Color.clear
                        ],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    ),
                    lineWidth: 1
                )
                .frame(width: 90, height: 40)
        }
        .shadow(
            color: Color("StemDark").opacity(0.12),
            radius: 5,
            x: 2,
            y: 4
        )
    }
}


// MARK: - 花盆
struct PotView: View {
    var body: some View {
        ZStack {

            // =====================================================
            // MARK: UnevenRoundedRectangle 花盆本體
            // =====================================================

            UnevenRoundedRectangle(
                cornerRadii: .init(
                    topLeading: 10,
                    bottomLeading: 30,
                    bottomTrailing: 30,
                    topTrailing: 10
                ),
                style: .continuous
            )
            .fill(
                LinearGradient(
                    colors: [
                        Color("PotLight"),
                        Color("PotBrown"),
                        Color("PotDark")
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: 116, height: 88)
            .shadow(
                color: .black.opacity(0.14),
                radius: 7,
                x: 2,
                y: 5
            )


            // =====================================================
            // MARK: 花盆高光 RoundedRectangle
            // =====================================================

            RoundedRectangle(cornerRadius: 11)
                .fill(
                    LinearGradient(
                        colors: [
                            Color.white.opacity(0.20),
                            Color.white.opacity(0.04)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .frame(width: 15, height: 75)
                .offset(x: -48, y: -4)
                .blur(radius: 2.6)
            
            
            
            
           
        }
    }
}


#Preview {
    ContentView()
}
