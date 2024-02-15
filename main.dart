import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: main3()
  ));
}
class main3 extends StatelessWidget {
  const main3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("مجموعه ها",style:TextStyle(color:Colors.white,fontSize:35,),),
        centerTitle: true,
        backgroundColor:Colors.tealAccent[200],
      ),
      body: Center(
        child: SizedBox.expand(
          child: Container(
          child: Lottie.network('https://lottie.host/39948014-19e1-424e-b865-82c49710e0b1/nRKwNgREi5.json'),
          ),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: [DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.greenAccent[100]
            ),
            child: const Text("سرفصل ها"),
          ),
            ListTile(
                title: const Text("تعاریف و نکات"),
                leading: Icon(Icons.manage_search_sharp,color: Colors.purple[200],),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const tarifha()));}
            ),
            ListTile(
                title: const Text("  اشتراک دو مجموعه"),
                leading: Text("Ⴖ", style: TextStyle(fontSize: 20,color: Colors.greenAccent[100], fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const eshterak()));}

            ),
            ListTile(
                title: const Text("اجتماع دو مجموعه"),
                leading: Text("∪", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.deepPurple[100]),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ejtema()));}
            ),
            ListTile(
                title: const Text("تفاضل دو مجموعه"),
                leading: Text("-", style: TextStyle(fontSize: 30, color: Colors.red[200]),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const tafazol()));}
            ),
            ListTile(
                title: const Text("تفاضل متقارن"),
                leading: Text("Δ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal[200]),),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const tafazol_mota()));}

            ),
            ListTile(
                title: const Text("مجموعه ها و احتمال"),
                leading: const Text("🎲"),
                //leadingAndTrailingTextStyle: Icon(Icons.change_circle_sharp),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ehtemal()));}
            ),

            ListTile(
                title: const Text("درباره ی ما"),
                leading: Icon(Icons.account_circle,color: Colors.pink[100],),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const about_us()));}
            ),
            // ListTile(
            //   leading: Icon(Icons.border_color_outlined, color: Colors.amber[200],),
            //   title: const Text("نمونه سوالات بیشتر"),
            //   onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>sample_question()));},
            // )
        ],
        ),
      ),
    );

  }
}
class eshterak extends StatelessWidget {
  const eshterak({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("اشتراک",textDirection: TextDirection.rtl),
        backgroundColor: Colors.deepPurple[100],
      ),
      body: Container(
        color: Colors.pink[100],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text("اشتراک دو مجموعه A و B مجموعه ای است از همه ی عضو هایی که هر کدام از آنها هم متعلق به A و هم متعلق به B باشد",textDirection: TextDirection.rtl,style:TextStyle(backgroundColor: Colors.pink[200],fontSize: 25)),
              const Text(""
                  ""),
              Text(""
                  "مثال :",style: TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.pink[50],fontSize: 25),),
              Text("A = {1,3,5,7,9}, B = {5,7,11} → AႶB = {5,7}",style:TextStyle( backgroundColor: Colors.deepPurple[100],fontSize: 25)),
              Text(""
                  "تعریف اشتراک در زبان ریاضی (زبان نمادین)", style: TextStyle(fontWeight: FontWeight.bold,backgroundColor: Colors.pink[50],fontSize: 25)),
              Text(""
                  "AႶB = {x|xϵA و xϵB}",style: TextStyle(color: Colors.pink[600],fontSize: 25),),
              const Text("علامت اشتراک در زبان ریاضی : ", style: TextStyle(fontSize: 25),),
              Lottie.network('https://lottie.host/66222aff-6a79-4d57-b4a5-8008ebe248ea/UCn2REnup5.json')],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon : Icon(Icons.change_circle_sharp),
            label: 'جا به جایی',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.share),
            label: 'شرکت پذیری',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_calls_outlined),
            label: 'توزیع پذیری',
          ),
        ],
        onTap: (index){Navigator.push(context, MaterialPageRoute(builder: (context)=>const jabejaie()));},
      ),
    );
  }
}
class ejtema extends StatelessWidget {
  const ejtema({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("اجتماع",textDirection: TextDirection.rtl),
        backgroundColor: Colors.green[200],
      ),
      body: Container(
        color : Colors.cyan[200],

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [Text("اجتماع دو مجموعه A و B مجموعه ای است از همه ی عضو های A و B به طوری که هر عضو آن یا متعلق به A باشد یا متعلق به B باشد و یا متعلق به هر دو باشد",textDirection: TextDirection.rtl,style: TextStyle(backgroundColor: Colors.indigo[100],fontSize: 25),),
              const Text(""
                  ""),
              Text(""
                  "مثال :✎",style: TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.blue[50],fontSize: 25),),
              Text(""
                  ""
                  "A = {1,3,5,7,9}, B = {5,7,11} → A∪B = {1,3,5,7,9,11}",style: TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.grey[300],fontSize: 25) ),
              Text(""
                  "تعریف اجتماع در زبان ریاضی (زبان نمادین)", style: TextStyle(fontWeight: FontWeight.bold, backgroundColor: Colors.lime[100],fontSize: 25)),
              Text(""
                  "A∪B = {x|xϵA  یا xϵB}", style: TextStyle( backgroundColor: Colors.lightGreenAccent[200],fontSize: 25),),
              const Text("علامت اجتماع در زبان ریاضی : ", style: TextStyle(fontSize: 20),),
              Lottie.network('https://lottie.host/695ed38a-e7b1-496f-a5c8-291c9b606fbb/rzgqzR8GHV.json')
            ],
          ),
        ),
      ),
    );
  }
}
class tafazol extends StatelessWidget {
  const tafazol({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("تفاضل دو مجموعه",textDirection: TextDirection.rtl),
        backgroundColor: Colors.pinkAccent[100],
      ),
      body: Container(
        color : Colors.pink[100],

        child: Center(
          child: Column(
            children: [Text("تفاضل دو مجموعه A و  B یعنی (A-B) مجموعه ی همه ی عضو های A می باشد که متعلق به B نباشد",textDirection: TextDirection.rtl, style: TextStyle(backgroundColor: Colors.lightGreen[100],fontSize: 25),),
              Text("به عبارت دیگر تفاضل دو مجموعه مجموعه ای است که عضو های آن متعلق به مجموعه اول باشد ، اما متعلق به مجموعه دوم نباشد",textDirection: TextDirection.rtl, style: TextStyle(backgroundColor: Colors.orange[100],fontSize: 25)),
              const Text(""
                  ""),
              Text(""
                  "مثال :✎",style: TextStyle(fontWeight: FontWeight.bold,backgroundColor: Colors.purple[50],fontSize: 25)),
              Text(""
                  ""
                  "A = {1,2,3,4,5}, B = {4,5,6,7} → A-B = {1,2,3}", style: TextStyle(backgroundColor: Colors.yellow[100],fontSize: 25), ),
              Text(""
                  "تعریف تفاضل در زبان ریاضی (زبان نمادین)", style: TextStyle(fontWeight: FontWeight.bold,backgroundColor: Colors.purple[50],fontSize: 25),),
              Text(""
                  "A-B = {x|xϵA  و x∉B}",style: TextStyle(backgroundColor: Colors.amber[100],fontSize: 25),)
            ],
          ),
        ),
      ),
    );
  }
}
class tarifha extends StatelessWidget {
  const tarifha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("تعاریف و نکات فصل اول ریاضی نهم",textDirection: TextDirection.rtl),
        backgroundColor: Colors.pink[100],
      ),
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.indigoAccent,
                  Colors.greenAccent,
                  Colors.lightBlueAccent,
                  Colors.green,
                  Colors.cyanAccent,
                  Colors.yellow,
                  Colors.pinkAccent
                ]
            ),
          ),
          child:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const Wrap(
                  children: [],
                ),
                const Text("مجموعه از مفاهیم تعریف نشده در ریاضیات است",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 25,),),
                const Text("از دیگر مفاهیم تعریف نشده در ریاضی : نقطه،خط،مجموعه و اعداد",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 25,),),
                const Text("ویژگی های مجموعه ",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20,),),
                const Text("از جا به جایی اعضای مجموعه، مجموعه جدیدی حاصل نمی شود",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20,),),
                const Text("عضوهای مجموعه متمایز هستند",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20,),),
                const Text("عضوهای مجموعه معین و مشخص هستند",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20,),),
                const Text("به هر یک از اشیاء یا اعداد موجود در مجموعه گفته می شود.نماد عضویت ∋ و نماد عدم عضویت ∋",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20,),),
                const Text("مجموعه ی تهی : مجموعه ی خالی و بدون عضو/نماد مجموعه تهی ∅",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20,),),
                const Text("تعریف زیر مجموعه : مجموعه ای که همه ی عضوهای آن در مجموعه ی اصلی باشد",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20,),),
                const Text("𝐴⊆𝐵={𝑥|𝑥∈𝐴→𝑥∈𝐵}",textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 20,),),
                TextButton.icon(onPressed: (){
                  launchUrlString('https://gama.ir/azmoon/36564/%D8%A2%D8%B2%D9%85%D9%88%D9%86-%D8%A2%D9%86%D9%84%D8%A7%DB%8C%D9%86-'
                      '%D8%AA%D8%B3%D8%AA%DB%8C-%D8%B1%DB%8C%D8%A7%D8%B6%DB%8C-%D9%86%D9%87%D9%85-%D9%81%D8%B5%D9%84-1-%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87%D9%87%D8%A7');
                }, icon: const Icon(Icons.add_circle),label: const Text("نمونه سوالات بیشتر")),
                TextButton.icon(onPressed: (){
                  launchUrlString('https://gama.ir/azmoon/detail/ny4xtz/%D8%A2%D8%B2%D9%85%D9%88%D9%86-%D9%85%D8%AC%D8%A7%D8%B2%DB%8C-'
                      '%D8%B1%DB%8C%D8%A7%D8%B6%DB%8C-%D9%BE%D8%A7%DB%8C%D9%87-%D9%86%D9%87%D9%85-%D8%AF%D8%A8%DB%8C%D8%B1%D8%B3%D8%AA%D8%A7%D9%86-%D8%B4%D9%87%DB%8C%D8%AF-%D8%A2%D9%88%DB%8C%D9%86%DB%8C-%DA%86%D8%A7%D8%A8%D9%87%D8%A7%D8%B1-%D9%81%D8%B5%D9%84-1-%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87-%D9%87%D8%A7');
                }, icon: const Icon(Icons.add_circle),label: const Text("نمونه سوالات بیشتر")),
                TextButton.icon(onPressed: (){
                  launchUrlString('https://gama.ir/test/detail/85161/%D8%A2%D8%B2%D9%85%D9%88%D9%86-%D8%B4%D9%85%D8%A7%D8%B1%D9%87-1-%D9%'
                      '81%D8%B5%D9%84-%D8%A7%D9%88%D9%84-%D8%B1%DB%8C%D8%A7%D8%B6%DB%8C-%D9%86%D9%87%D9%85-%D8%A8%D8%B1%D8%A7%D8%B3%D8%A7%D8%B3-%D8%B3%D9%88%D8%A7%D9%84%D8%A7%D8%AA-%D8%A7%D9%85%D8%AA%D8%AD%D8%A7%D9%86-%D9%86%D9%87%D8%A7%DB%8C%DB%8C-%D8%B3%D8%A7%D9%84-%D9%87%D8%A7%DB%8C-%DA%AF%D8%B0%D8%B4%D8%AA%D9%87');
                }, icon: const Icon(Icons.add_circle),label: const Text("نمونه سوالات بیشتر")),
                TextButton.icon(onPressed: (){
                  launchUrlString('https://gama.ir/azmoon/detail/hsbBcr/%D8%A2%D8%B2%D9%85%D9%88%D9%86-%D8%BA%DB%8C%'
                      'D8%B1%D8%AD%D8%B6%D9%88%D8%B1%DB%8C-%D8%AA%D8%B3%D8%AA%DB%8C-%D8%B3%D8%B7%D8%AD-%D8%AF%D8%B4%D9%88%D8%A7%D8%B'
                      '1-%D8%B1%DB%8C%D8%A7%D8%B6%DB%8C-%D9%86%D9%87%D9%85-%D9%81%D8%B5%D9%84-1-%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87-%D9%87%D8%A7');
                }, icon: const Icon(Icons.add_circle),label: const Text("نمونه سوالات بیشتر")),



              ],
            ),
          ),

        ),
      ),
    );

  }
}
class jabejaie extends StatelessWidget {
  const jabejaie({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" جا به جایی ،شرکت پذیری ، توزیع پذیری و مجموعه تهی"),
        backgroundColor: Colors.deepPurple[100],
        shadowColor: Colors.purple[100],
        elevation: 30,


      ),
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFFFCE4EC),
                  Color(0xFFF8BBD0),
                  Color(0xFFC5E1A5),
                  Color(0xFFB2DFDB)

                ]
            ),
          ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [Text("جا به جایی : AႶB = BႶA",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("AႶ(BႶC) = (AႶB)ႶC : شرکت پذیری",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("AႶ(B∪C) = (AႶB)∪(AႶC) : توزیع پذیری",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("AႶØ=Ø : مجموعه تهی",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("اگر یک مجموعه زیر مجموعه ای از مجموعه دیگر باشد اشتراک آنها برابر است با زیر مجموعه ی مجموعه ی اصلی.",
              style: TextStyle(fontSize: 20),),
            Text("اگر یک مجموعه زیر مجموعه ای از مجموعه دیگر باشد اشتراک آنها برابر است با زیر مجموعه ی مجموعه ی اصلی.",
              style: TextStyle(fontSize: 20),),
            Text("اشتراک یک مجموعه با تهی برابر است با تهی.",
              style: TextStyle(fontSize: 20),),
            Text("اشتراک یک مجموعه با مجموعه مرجع برابر است با مجموعه ی اصلی.",
          style: TextStyle(fontSize: 20),),
            Text("اشتراک یک مجموعه با خودش برابر است با خود مجموعه",
              style: TextStyle(fontSize: 20)),
            Text("اشتراک دو مجموعه دارای خاصیت توزیع پذیری می باشد",
              style: TextStyle(fontSize: 20),),
            Text("عمل اشتراک در مجموعه ها داری خاصیت شرکت پذیری می باشد.",
              style: TextStyle(fontSize: 20),),
            Text("اشتراک دو مجموعه زیر مجموعه ای از هر یک از آن دو مجموعه می باشد",
              style: TextStyle(fontSize: 20)),


        ]
        ),
      ),
      ),
    );
  }
}
class ehtemal extends StatelessWidget {
  const ehtemal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("مجموعه ها و احتمال"),
        backgroundColor: Colors.pink[50],

      ),
      body: SizedBox.expand(
        child:Container(
        color: Colors.yellow[100],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          children : [TextButton(onPressed: (){}, child: Text("انواع پدیده", style: TextStyle(backgroundColor: Colors.pink[50]),),),
            Text("پدیده های قطعی: که نتیجه آزمایش آنها فقط یک حالت می باشد مثل حرارت دادن آب تا دمای 100 درجه",style: TextStyle(backgroundColor: Colors.green[300]),),
            // Icon(Icons.data_object_outlined),
            Text("پدیده های تصادفی: که نتیجه آزمایش آنها به طور قطع مشخص نمی باشد و نتیجه آزمایش بیش از یک حالت می باشد. مثل انداختن تاس",style: TextStyle(backgroundColor: Colors.greenAccent[100]),),
            Text("فضای نمونه مجموعه همه حالت های ممکن در یک پدیده تصادفی را فضای نمونه می گویند", style: TextStyle(fontWeight: FontWeight.w200, backgroundColor: Colors.pink[100]),
            ),
            Text("""مفهوم سه کلمه :\n
            حداکثر = خود عدد مورد نظر و اعداد بعد از آن\n
            حداقل= خود عدد مورد نظر و اعداد بعد از آن\n
              فقط = دقیقاً همان عدد""",style: TextStyle(backgroundColor: Colors.pink[50]),),
            Lottie.network('https://lottie.host/5daad088-99fe-482f-ad31-b1a8a2aecad4/SbTvD8aZNH.json'),
            TextButton.icon(onPressed: (){
              launchUrlString('https://gama.ir/azmoon/detail/HijYlq/%D8%A2%D8%B2%D9%85%D9%88%D9%86-%D8%AA%D8%B3%D8%AA%DB%8C-%D9%81%D8%B5%D9%84-1-%D8%B1%DB%8C%D8%A7%D8%B6%DB%8C-%D9%86%D9%87%D9%85-%D8%AF%D8%B1%D8%B3-%DA%86%D9%87%D8%A7%D8%B1%D9%85-%D9%85%D8%AC%D9%85%D9%88%D8%B9%D9%87%D9%87%D8%A7-%D9%88-%D8%A7%D8%AD%D8%AA%D9%85%D8%A7%D9%84');
            }, icon: const Icon(Icons.add_circle),label: const Text("نمونه سوالات بیشتر در مورد مجموعه ها و احتمال")),

          ],
        ),
      ),
        ),
    ),
    );
  }
}
class about_us extends StatelessWidget {
  const about_us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("راهنما ، درباره ما و منابع",textDirection: TextDirection.rtl),
        backgroundColor: Colors.purple[100],
      ),
      body: Container(
        color : Colors.red[100],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [Text(""
                "سلام.به این برنامه خوش آمدید!از اینکه ما را انتخاب کردید متشکریم:)هدف ما از ساخت این برنامه، بهبود کیفیت تدریس ریاضی با ابزارها و راه‌های جدید برای آسان‌تر و سرگرم‌کننده‌تر کردن این سفر شگفت‌انگیز در ریاضیات است . علاوه بر این، امیدوارم این برنامه دانش‌آموزان را نسبت به ریاضی، محاسبه و به‌ویژه مجموعه‌ها علاقه‌مندتر کند:)\n",
              textDirection: TextDirection.rtl,style: TextStyle(backgroundColor: Colors.teal[100]),),
              Text("این برنامه می تواند به عنوان یک مکمل باشد. استفاده از این برنامه به تنهایی برای امتحانات شما کافی نیست، ما به شما پیشنهاد می کنیم حتما کتاب ریاضی اصلی خود را مطالعه کنید، نکات و خلاصه هایی را که در طول ترم جمع آوری کرده اید مرور کنید و همچنین تمرین های زیادی را انجام دهید. همچنین سعی کنید نقاط ضعف خود را پیدا کنید ، روی آنها تمرکز کنید و تمرینات مربوط به آنها را انجام دهید.",
                textDirection: TextDirection.rtl,style: TextStyle(backgroundColor: Colors.greenAccent[200]),),
              Text("\n در پایان باید از دبیر محترم ریاضی سرکار خانم معصومه قورچیان تشکر کنیم که ما را حمایت کردند،سپاسگزارم از دبیر گرانقدر برنامه نویسی  سرکار خانم نرگس علی حیدری",
                style:TextStyle(backgroundColor: Colors.blue[200]),),
              Text("\nو با تشکر از مدیریت مدرسه فرزانگان6  سرکار خانم دارایی",
                style:TextStyle(backgroundColor: Colors.blue[50]),),
              Text("انیسا وفایی فرد",style: TextStyle(color: Colors.pinkAccent[200], fontSize: 25, ),
                textAlign: TextAlign.right,),
              Icon(Icons.people_alt_rounded, color: Colors.indigo[200],),
              Wrap(
                children: [ const Text("منابع", textAlign: TextAlign.start,),
                  Text(",کتاب رشادت مبتکران ریاضی نهم ،\n آموزش پیشرفته ریاضی نهم تیزهوشان نشر گل واژه \n,کتاب ریاضی جامع نهم\nکتاب ریاضی وزارتی نهم\n", style: TextStyle(backgroundColor: Colors.red[100]),)],
              ),
            Lottie.network('https://lottie.host/8e9c24ae-e13f-4b5f-8ddc-83955591d5a1/wq0x6t2Eun.json')],
            

          ),
        ),
      ),
    );

  }
}
class tafazol_mota extends StatelessWidget {
  const tafazol_mota({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("تفاضل متقارن"),
        backgroundColor: Colors.teal[100],
        centerTitle: true,


      ),
      body:  Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.pinkAccent,
                  Colors.purpleAccent,
                  Colors.indigoAccent,
                  Colors.lightBlueAccent
                ]
            ),
          ),

          child: const SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [Text("مجموعه تفاضل متقارن دو مجموعه A و B شامل اعضایی است که ، دقیقا به یکی از دو مجموعه A یا B تعلق دارد",
                style: TextStyle(fontSize: 25),textDirection: TextDirection.rtl,),
                Text("مثال :✎ ",style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Text("\n"),
                Text("A = {1,3,5,7} , B = {3,5,9} → A-B = {1,7} , B-A = {9} → AΔB = {1,7,9}",
                  style: TextStyle(fontSize: 25),),
                Text(" : نمایش تفاضل متقارن دو مجموعه با استفاده از علاِئم ریاضی",
                  style: TextStyle(fontSize: 25),),
                Text("AΔB = {x|xϵA-B یا xϵB-A",
                  style: TextStyle(fontSize: 25),),
                Text("\n"),
                Text("AΔB = (A-B)∪(B-A)", style: TextStyle(fontSize: 25),),
                Text("AΔB = (A∪B)-(BႶA)",style: TextStyle(fontSize: 25),),


              ],
            ),

          ),
        ),
      ),
    );
  }
}
// class sample_question extends StatelessWidget {
//   const sample_question({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(""),
//
//       ),
//       body:  SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Wrap(
//           children: [
//             Lottie.network('https://lottie.host/7f44b270-5efe-45ce-b3da-247d38c682fc/wsLEr6Y71Z.json'),
//             // ElevatedButton(onPressed: (){}, )
//             ElevatedButton(
//
//               style: ElevatedButton.styleFrom(
//                 minimumSize: Size(30.0, 36.0), backgroundColor: Colors.green,
//                 padding: EdgeInsets.all(15.0),
//                 shape: RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(10.0)
//                 ),
//               ), onPressed: () {
//                 OpenFilex.open('https://mail.google.com/mail/u/0/#inbox?projector=1');
//             }, child: null,
//             ),
//           ],
//         ),
//
//       ),);}
}
