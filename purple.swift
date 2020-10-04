//
//  ContentView.swift
//  ios0930
//
//  Created by User13 on 2020/9/30.
//
import SwiftUI

struct ContentView: View {
    let MinionsColor:[Double]=[127,62,152]
    var body: some View {
        ZStack{
            /*Image("background")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)*/

            // body
            MinionsBody()
                .stroke(style: StrokeStyle(lineWidth:8, lineJoin: .round))
            MinionsBody()
                .fill(Color(red: MinionsColor[0]/255, green: MinionsColor[1]/255, blue: MinionsColor[2]/255))
            // hair
            MinionsHair().stroke(style: StrokeStyle(lineWidth:8, lineJoin: .round))
            MinionsHair().fill(Color(red: MinionsColor[0]/255, green: MinionsColor[1]/255, blue: MinionsColor[2]/255))
            //mouth
            MinionsMouthView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MinionsBody:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 95, y: 170))// left眼尾
            path.addLine(to: CGPoint(x:96,y:284))// left腋下處
            path.addQuadCurve(to: CGPoint(x:100,y:329), control: CGPoint(x:95,y:324))
            path.addLine(to: CGPoint(x:242,y:330))// -
            path.addQuadCurve(to: CGPoint(x:244,y:286), control: CGPoint(x:246,y:322))// right腋下處
            path.addLine(to: CGPoint(x:244,y:170))// right眼尾
        }
    }
}
struct MinionsHair:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 238, y: 174))//right眼尾
            path.addQuadCurve(to: CGPoint(x:260,y:221), control: CGPoint(x:259,y:192))
            path.addQuadCurve(to: CGPoint(x:257,y:181), control: CGPoint(x:268,y:200))
            path.addQuadCurve(to: CGPoint(x:282,y:234), control: CGPoint(x:280,y:204))
            path.addQuadCurve(to: CGPoint(x:285,y:197), control: CGPoint(x:290,y:216))
            path.addQuadCurve(to: CGPoint(x:284,y:195), control: CGPoint(x:292,y:213))
            path.addQuadCurve(to: CGPoint(x:297,y:220), control: CGPoint(x:295,y:204))
            path.addQuadCurve(to: CGPoint(x:277,y:167), control: CGPoint(x:303,y:186))
            path.addQuadCurve(to: CGPoint(x:320,y:184), control: CGPoint(x:303,y:170))
            path.addQuadCurve(to: CGPoint(x:258,y:132), control: CGPoint(x:300,y:140))
            path.addQuadCurve(to: CGPoint(x:316,y:129), control: CGPoint(x:288,y:120))
            path.addQuadCurve(to: CGPoint(x:236,y:93), control: CGPoint(x:276,y:96))
            path.addQuadCurve(to: CGPoint(x:279,y:89), control: CGPoint(x:258,y:88))
            path.addQuadCurve(to: CGPoint(x:184,y:65), control: CGPoint(x:236,y:54))
            path.addQuadCurve(to: CGPoint(x:219,y:31), control: CGPoint(x:194,y:42))
            path.addQuadCurve(to: CGPoint(x:171,y:62), control: CGPoint(x:188,y:31))//最中間頭髮髮線_left
            path.addQuadCurve(to: CGPoint(x:120,y:35), control: CGPoint(x:155,y:37))
            path.addQuadCurve(to: CGPoint(x:158,y:65), control: CGPoint(x:150,y:48))
            path.addQuadCurve(to: CGPoint(x:59,y:87), control: CGPoint(x:113,y:56))
            path.addQuadCurve(to: CGPoint(x:100,y:92), control: CGPoint(x:81,y:88))
            path.addQuadCurve(to: CGPoint(x:29,y:130), control: CGPoint(x:54,y:96))
            path.addQuadCurve(to: CGPoint(x:85,y:132), control: CGPoint(x:55,y:122))
            path.addQuadCurve(to: CGPoint(x:24,y:188), control: CGPoint(x:40,y:146))
            path.addQuadCurve(to: CGPoint(x:67,y:169), control: CGPoint(x:41,y:173))
            path.addQuadCurve(to: CGPoint(x:46,y:221), control: CGPoint(x:40,y:191))
            path.addQuadCurve(to: CGPoint(x:62,y:197), control: CGPoint(x:49,y:203))
            path.addQuadCurve(to: CGPoint(x:62,y:235), control: CGPoint(x:51,y:221))
            path.addQuadCurve(to: CGPoint(x:86,y:181), control: CGPoint(x:62,y:208))
            path.addQuadCurve(to: CGPoint(x:81,y:220), control: CGPoint(x:73,y:207))
            path.addQuadCurve(to: CGPoint(x:105,y:174), control: CGPoint(x:87,y:190))
            
        }
    }
}

struct MinionsMouthView:View{
    var body: some View {
        ZStack{
            MinionsLip().fill(Color(red: 50/255, green: 0/255, blue: 0/255))
            MinionsTeeth().fill(Color.white)
            MinionsTeeth().stroke(style: StrokeStyle(lineWidth:2, lineJoin: .round))
            // tongue
            Group{
                Path(ellipseIn: CGRect(x: 162, y: 265, width: 25, height: 13)).stroke(style: StrokeStyle(lineWidth:4, lineJoin: .round))
                Path(ellipseIn: CGRect(x: 162, y: 265, width: 25, height: 13))
                                    .fill(Color(red: 235/255, green: 120/255, blue: 166/255))
                Path(ellipseIn: CGRect(x: 151, y: 265, width: 25, height: 12)).stroke(style: StrokeStyle(lineWidth:4, lineJoin: .round))
                Path(ellipseIn: CGRect(x: 151, y: 265, width: 25, height: 12))
                                    .fill(Color(red: 235/255, green: 120/255, blue: 166/255))
            }
            MinionsTeeth().fill(Color.white).rotation3DEffect(.degrees(180),axis:(x:1.0,y:1.0,z:0.0))////////////??????????????????
            MinionsTeeth().stroke(style: StrokeStyle(lineWidth:2, lineJoin: .round))
            MinionsLip().stroke(style: StrokeStyle(lineWidth:4, lineJoin: .round))
        }
    }
}
struct MinionsLip:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 157, y: 234))
            path.addQuadCurve(to: CGPoint(x:143,y:239), control: CGPoint(x:148,y:228))
            path.addQuadCurve(to: CGPoint(x:134,y:273), control: CGPoint(x:137,y:248))
            path.addQuadCurve(to: CGPoint(x:190,y:280), control: CGPoint(x:160,y:280))
            path.addQuadCurve(to: CGPoint(x:195,y:252), control: CGPoint(x:195,y:266))
            path.addQuadCurve(to: CGPoint(x:157,y:234), control: CGPoint(x:175,y:241))
        }
    }
}
struct MinionsTeeth:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            // 1
            path.move(to: CGPoint(x: 150, y: 234))
            path.addLine(to: CGPoint(x:147,y:238))
            path.addLine(to: CGPoint(x:153,y:239))
            // 2
            path.move(to: CGPoint(x: 154, y: 233))
            path.addLine(to: CGPoint(x:156,y:250))
            path.addLine(to: CGPoint(x:164,y:238))
            // 3
            path.move(to: CGPoint(x: 163, y: 237))
            path.addLine(to: CGPoint(x:163,y:243))
            path.addLine(to: CGPoint(x:168,y:243))
            path.addLine(to: CGPoint(x:172,y:240))
            // 4
            path.move(to: CGPoint(x: 171, y: 240))
            path.addLine(to: CGPoint(x:173,y:249))
            path.addLine(to: CGPoint(x:179,y:243))
            // 5
            path.move(to: CGPoint(x: 178, y: 244))
            path.addLine(to: CGPoint(x:181,y:256))
            path.addLine(to: CGPoint(x:189,y:249))
            // 6
            path.move(to: CGPoint(x: 188, y: 247))
            path.addLine(to: CGPoint(x:189,y:254))
            path.addLine(to: CGPoint(x:195,y:255))
            path.addLine(to: CGPoint(x:197,y:253))
        }
    }
}
/*
struct MinionsArm:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            
        }
    }
}
struct MinionsHPalm:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            
        }
    }
}
struct MinionsLeg:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            
        }
    }
}
struct MinionsGlassesView: View {
    var body: some View {
//        ZStack{
//            Path(roundedRect :CGRect(x:21,y:69,width:130,height: 20), cornerRadius: 5)
//                .fill(Color.black)
//            Group{
//                Path(ellipseIn: CGRect(x: 40, y: 50, width: 55, height: 55))
//                    .fill(Color.black)
//                Path(ellipseIn: CGRect(x: 80, y: 50, width: 55, height: 55))
//                    .fill(Color.black)
//                //鏡框
//                Path(ellipseIn: CGRect(x: 45, y: 55, width: 45, height: 45))
//                    .fill(Color.gray)
//                Path(ellipseIn: CGRect(x: 85, y: 55, width: 45, height: 45))
//                    .fill(Color.gray)
//                //眼框
//                Path(ellipseIn: CGRect(x: 50, y: 60, width: 35, height: 35))
//                    .fill(Color.black)
//                Path(ellipseIn: CGRect(x: 90, y: 60, width: 35, height: 35))
//                    .fill(Color.black)
//                //眼白
//                Path(ellipseIn: CGRect(x: 55, y: 65, width: 25, height: 25))
//                    .fill(Color.white)
//                Path(ellipseIn: CGRect(x: 95, y: 65, width: 25, height: 25))
//                    .fill(Color.white)
//                //眼珠
//                Path(ellipseIn: CGRect(x: 63, y: 72, width: 10, height: 10))
//                    .fill(Color.black)
//                Path(ellipseIn: CGRect(x: 103, y: 72, width: 10, height: 10))
//                    .fill(Color.black)
//            }
//        }
    }
}
struct MinionsClothesView: View {
    var body: some View {
//        ZStack{
//            Group(){
//                // 主要布料
//                MinionsCloth1().stroke(lineWidth:8)
//                MinionsCloth1().fill(Color(red: 8/255, green: 109/255, blue: 187/255))
//                Path{(path)in
//                    path.move(to: CGPoint(x: 87, y: 207))
//                    path.addLine(to: CGPoint(x:87,y:195))
//                }.stroke(lineWidth: 8) // |褲長
//                Path(roundedRect :CGRect(x:74,y:195,width:26,height: 4), cornerRadius: 8)
//                    .fill(Color.black)// -鼠蹊部
//            }
//            Group(){
//                //肩帶
//                MinionsBaldric().stroke(style: StrokeStyle(lineWidth:8, lineJoin: .round))
//                MinionsBaldric().fill(Color(red: 8/255, green: 109/255, blue: 187/255))
//                //left_button
//                Group{
//                    Path(ellipseIn: CGRect(x: 48, y: 125, width: 10, height: 10))
//                        .fill(Color.black)
//                    Path(ellipseIn: CGRect(x: 52, y: 127, width: 2, height: 2))
//                        .fill(Color.blue)
//                    Path(ellipseIn: CGRect(x: 50, y: 129, width: 2, height: 2))
//                        .fill(Color.blue)
//                    Path(ellipseIn: CGRect(x: 54, y: 129, width: 2, height: 2))
//                        .fill(Color.blue)
//                    Path(ellipseIn: CGRect(x: 52, y: 131, width: 2, height: 2))
//                        .fill(Color.blue)
//                }
//                //right_button
//                Group{
//                    Path(ellipseIn: CGRect(x: 116, y: 125, width: 10, height: 10))
//                        .fill(Color.black)
//                    Path(ellipseIn: CGRect(x: 117, y: 128, width: 2, height: 2))
//                        .fill(Color.blue)
//                    Path(ellipseIn: CGRect(x: 119, y: 131, width: 2, height: 2))
//                        .fill(Color.blue)
//                    Path(ellipseIn: CGRect(x: 120, y: 127, width: 2, height: 2))
//                        .fill(Color.blue)
//                    Path(ellipseIn: CGRect(x: 122, y: 130, width: 2, height: 2))
//                        .fill(Color.blue)
//                }
//            }
//            //口袋
//            MinionsPocket().stroke(lineWidth:8)
//            MinionsPocket().fill(Color(red: 8/255, green: 109/255, blue: 187/255))
//        }
    }
}
struct MinionsCloth1:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
//            path.move(to: CGPoint(x: 48, y: 130))// 左上角start
//            path.addLine(to: CGPoint(x:125,y:130))// -
//            path.addLine(to: CGPoint(x:125,y:165))// |
//            path.addLine(to: CGPoint(x:150,y:165))// -
//            path.addArc(center:CGPoint(x:116,y:165),radius:30,startAngle:.degrees(0),endAngle:.degrees(90),clockwise:false)// 」
//            path.addLine(to: CGPoint(x:115,y:205))// |
//            path.addQuadCurve(to: CGPoint(x:88,y:205), control: CGPoint(x:95,y:210))// right褲管
//            path.addQuadCurve(to: CGPoint(x:59,y:205), control: CGPoint(x:75,y:210))// left褲管
//            path.addArc(center:CGPoint(x:57,y:165),radius:30,startAngle:.degrees(90),endAngle:.degrees(180),clockwise:false)// L
//            path.addLine(to: CGPoint(x:48,y:165))// -
//            path.addLine(to: CGPoint(x:48,y:130))// |
//            path.closeSubpath()
        }
    }
}
struct MinionsBaldric:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
//            // left肩帶
//            path.move(to: CGPoint(x: 25, y: 110))// 左上角start
//            path.addLine(to: CGPoint(x:60,y:130))// \
//            path.addLine(to: CGPoint(x:55,y:137))// /
//            path.addLine(to: CGPoint(x:25,y:120))// \
//            path.addLine(to: CGPoint(x:25,y:110))// |
//            path.closeSubpath()
//            // right肩帶
//            path.move(to: CGPoint(x: 148, y: 110))// 右上角start
//            path.addLine(to: CGPoint(x:114,y:130))// /
//            path.addLine(to: CGPoint(x:119,y:137))// \
//            path.addLine(to: CGPoint(x:148,y:120))// /
//            path.addLine(to: CGPoint(x:148,y:110))// |
//            path.closeSubpath()
        }
    }
}
struct MinionsPocket:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to:CGPoint(x:69,y:145))// 左上角start
            path.addLine(to: CGPoint(x:105,y:145))// -
            path.addLine(to: CGPoint(x:105,y:159))// |
            path.addArc(center:CGPoint(x:95,y:157),radius:10,startAngle:.degrees(30),endAngle:.degrees(90),clockwise:false)// 」
            path.addArc(center:CGPoint(x:79,y:157),radius:10,startAngle:.degrees(90),endAngle:.degrees(150),clockwise:false)// L
            path.addLine(to: CGPoint(x:69,y:159))// |
            path.addLine(to: CGPoint(x:69,y:145))// 接回原點
            path.closeSubpath()
        }
    }
}
*/

