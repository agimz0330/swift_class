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
            Group{
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
                 // hands
                MinionsArm().stroke(style: StrokeStyle(lineWidth:8, lineJoin: .round))
                MinionsArm()
                    .fill(Color(red: MinionsColor[0]/255, green: MinionsColor[1]/255, blue: MinionsColor[2]/255))
                MinionsHPalm().stroke(style: StrokeStyle(lineWidth:8, lineJoin: .round))
                MinionsHPalm().fill(Color(red: 51/255, green: 1/255, blue: 1/255))
            }
            // legs
            MinionsLeg().stroke(style: StrokeStyle(lineWidth:4, lineJoin: .round))
            MinionsLeg().fill(Color(red: 51/255, green: 1/255, blue: 1/255))
            // glasses
            MinionsGlassesView()
            // clothes
            MinionsClothesView()
            // text
            Text("Booms !!")
                .foregroundColor(Color.orange)
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

struct MinionsArm:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            // left
            path.move(to: CGPoint(x: 94, y: 270))
            path.addLine(to: CGPoint(x:36,y:218))
            path.addLine(to: CGPoint(x:28,y:229))
            path.addLine(to: CGPoint(x:96,y:284))
            //right
            path.move(to: CGPoint(x: 243, y: 271))
            path.addLine(to: CGPoint(x:304,y:219))
            path.addLine(to: CGPoint(x:308,y:228))
            path.addLine(to: CGPoint(x:244,y:286))
        }
    }
}
struct MinionsHPalm:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            // left
            path.move(to: CGPoint(x: 37, y: 219))
            path.addLine(to: CGPoint(x:32,y:211))
            path.addQuadCurve(to: CGPoint(x:18,y:204), control: CGPoint(x:22,y:192))
            path.addQuadCurve(to: CGPoint(x:14,y:212), control: CGPoint(x:9,y:199))
            path.addQuadCurve(to: CGPoint(x:22,y:227), control: CGPoint(x:0,y:217))
            path.addLine(to: CGPoint(x:28,y:230))
            path.addLine(to: CGPoint(x:37,y:219))
            path.closeSubpath()
            // right
            path.move(to: CGPoint(x: 299, y: 220))
            path.addLine(to: CGPoint(x:304,y:215))
            path.addQuadCurve(to: CGPoint(x:316,y:206), control: CGPoint(x:312,y:195))
            path.addQuadCurve(to: CGPoint(x:323,y:212), control: CGPoint(x:329,y:200))
            path.addQuadCurve(to: CGPoint(x:316,y:227), control: CGPoint(x:337,y:222))
            path.addLine(to: CGPoint(x:309,y:231))
            path.addLine(to: CGPoint(x:299,y:220))
            path.closeSubpath()

        }
    }
}
struct MinionsLeg:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            // left
            path.move(to: CGPoint(x: 119, y:375 ))
            path.addQuadCurve(to: CGPoint(x:103,y:387), control: CGPoint(x:107,y:379))
            path.addQuadCurve(to: CGPoint(x:132,y:385), control: CGPoint(x:120,y:390))
            path.addLine(to: CGPoint(x:131,y:377))
            path.addLine(to: CGPoint(x:119,y:375))
            path.closeSubpath()
            // right
            path.move(to: CGPoint(x: 192, y: 380))
            path.addQuadCurve(to: CGPoint(x:224,y:395), control: CGPoint(x:203,y:395))
            path.addQuadCurve(to: CGPoint(x:209,y:377), control: CGPoint(x:225,y:387))
            path.addLine(to: CGPoint(x:192,y:380))
            path.closeSubpath()
        }
    }
}
struct MinionsGlassesView: View {
    var body: some View {
        ZStack{
            Path(roundedRect :CGRect(x:95,y:184,width:148,height: 18), cornerRadius: 5)
                .fill(Color.black)
            MinionsSingleGlassesView()
            MinionsSingleGlassesView().rotation3DEffect(.degrees(180),axis:(x:0.0,y:1.0,z:0.0))
        }
    }
}
struct MinionsSingleGlassesView:View{
    var body: some View {
        ZStack{
            Path(ellipseIn: CGRect(x: 114, y: 158, width: 50, height: 50))
                .fill(Color.black)
            // 鏡框
            Path(ellipseIn: CGRect(x: 117, y: 161, width: 40, height: 40))
                .fill(Color.gray)
            // 眼框
            Path(ellipseIn: CGRect(x: 120, y: 164, width: 30, height: 30))
                .fill(Color.black)
            // 眼白
            Path(ellipseIn: CGRect(x: 122, y: 166, width: 20, height: 20))
                .fill(Color.white)
            // 眼珠
            Path(ellipseIn: CGRect(x: 126, y: 170, width: 5, height: 5))
                .fill(Color.black)
            // 黑眼圈_上
            Path{(path) in
                path.move(to: CGPoint(x: 120, y: 152))
                path.addQuadCurve(to: CGPoint(x:164,y:163), control: CGPoint(x:149,y:148))
            }.fill(Color.black)
            // 黑眼圈_下
            Path{(path) in
                path.move(to: CGPoint(x: 163, y: 211))
                path.addQuadCurve(to: CGPoint(x:136,y:219), control: CGPoint(x:152,y:221))
            }.fill(Color.black)
        }
    }
}
struct MinionsClothesView: View {
    var body: some View {
        ZStack{
            Group(){
                // 主要布料
                MinionsCloth1().stroke(lineWidth:8)
                MinionsCloth1().fill(Color(red: 8/255, green: 109/255, blue: 187/255))
                // 腿
                MinionsCloth2().stroke(lineWidth:8)
                MinionsCloth2().fill(Color(red: 8/255, green: 109/255, blue: 187/255))
            }
            Group(){
                //肩帶
                MinionsBaldric().stroke(style: StrokeStyle(lineWidth:8, lineJoin: .round))
                MinionsBaldric().fill(Color(red: 8/255, green: 109/255, blue: 187/255))
                //left_button
                Path(ellipseIn: CGRect(x: 119, y: 295, width: 5, height: 5)).fill(Color.black)
                //right_button
                Path(ellipseIn: CGRect(x: 219, y: 296, width: 5, height: 5)).fill(Color.black)
            }
            //口袋
            MinionsPocket().stroke(lineWidth:8)
            MinionsPocket().fill(Color(red: 8/255, green: 109/255, blue: 187/255))
        }
    }
}
struct MinionsCloth1:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to: CGPoint(x: 118, y: 291))// 左上角start
            path.addQuadCurve(to: CGPoint(x:219,y:293), control: CGPoint(x:168,y:301))// -
            path.addQuadCurve(to: CGPoint(x:239,y:327), control: CGPoint(x:217,y:330))// L
            path.addCurve(to: CGPoint(x:98,y:326), control1: CGPoint(x:210,y:372), control2: CGPoint(x:120,y:366))// U
            path.addQuadCurve(to: CGPoint(x:118,y:291), control: CGPoint(x:120,y:319))// L
            path.closeSubpath()
        }
    }
}

struct MinionsCloth2:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            // left褲管
            path.move(to: CGPoint(x: 114, y: 351))// 左上角start
            path.addLine(to: CGPoint(x:120,y:377))// \
            path.addLine(to: CGPoint(x:129,y:379))// -
            path.addLine(to: CGPoint(x:141,y:365))// /
            // right褲管
            path.move(to: CGPoint(x: 216, y: 360))// 右上角start
            path.addLine(to: CGPoint(x:208,y:379))// /
            path.addLine(to: CGPoint(x:194,y:382))// -
            path.addLine(to: CGPoint(x:187,y:370))// \
        }
    }
}
struct MinionsBaldric:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            // left肩帶
            path.move(to: CGPoint(x: 94, y: 242))// 左上角start
            path.addLine(to: CGPoint(x:129,y:300))// \
            path.addLine(to: CGPoint(x:118,y:306))// /
            path.addLine(to: CGPoint(x:93,y:261))// \
            path.addLine(to: CGPoint(x:94,y:242))// |
            path.closeSubpath()
            // right肩帶
            path.move(to: CGPoint(x: 244, y: 242))// 右上角start
            path.addLine(to: CGPoint(x:211,y:299))// /
            path.addLine(to: CGPoint(x:217,y:305))// \
            path.addLine(to: CGPoint(x:244,y:261))// /
            path.addLine(to: CGPoint(x: 244, y: 242))// |
            path.closeSubpath()
        }
    }
}
struct MinionsPocket:Shape{
    func path(in rect: CGRect) -> Path {
        Path{ (path) in
            path.move(to:CGPoint(x:152,y:311))// 左上角start
            path.addLine(to: CGPoint(x:184,y:311))// -
            path.addLine(to: CGPoint(x:180,y:327))// |
            path.addArc(center:CGPoint(x:166,y:323),radius:10,startAngle:.degrees(30),endAngle:.degrees(150),clockwise:false)// U
            path.addLine(to: CGPoint(x:152,y:311))// |，接回原點
            path.closeSubpath()
        }
    }
}


