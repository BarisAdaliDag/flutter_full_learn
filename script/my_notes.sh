Veli hoca temelden zirveye
1. vıdeo
Flutter nedir 
Software developer kit uıkit bir framework
 Flutter document Widget catalog
Material icon
Everything is widget flutter geliştirdiğin bir component bak yerde kullanabilirsin

Terminal 
cd /Users/ada/Desktop/flutter_repo/flutter_learn_full/flutter_full_learn dizine gitme
mkdir … klasör oluşruema

flutter create flutter_full_learn flutter uygulama oluşturma
cd /Users/ada/Desktop/flutter_repo/flutter_learn_full/flutter_full_learn
code . Visual studio uygulama açılması
—
Pubdev.com paketlerin bulunduğu site
animation
shimmer
Rertry - işi 3 defa dene özellik


displayLarge (eski headline1)
displayMedium (eski headline2)
displaySmall (eski headline3)
headlineLarge (eski headline4)
headlineMedium (eski headline5)
headlineSmall (eski headline6)
titleLarge (eski subtitle1)
titleMedium (eski subtitle2)
titleSmall (yeni, eskiden var olan bir isim değil)
bodyLarge (eski bodyText1)
bodyMedium (eski bodyText2)
bodySmall (yeni, eskiden var olan bir isim değil)
labelLarge (eski button)
labelMedium (yeni, eskiden var olan bir isim değil)
labelSmall (yeni, eskiden var olan bir isim değil)


2.video
Flutter run

material typography
https://m3.material.io/styles/typography/overview

Metarial app: flutter projesinin temasının adı

Flutter iskeleti scafold appear body yapıs

3. Video  
 Fn + control + space 

Buton içinde generic boyut vermek yerine yazıdan sonra kenarlara padding vererek yapmak daha doğru

Appbarda mainde genel tasarım yap

debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.red,
        elevation: 0,
      )),

Color name generator

4. Video

Build methodları içinde widgetları geliştiririz
Tekrar eden widget varsa bunu ayrı bir widget taşı custom olsun
Stateless widget içersinde veride sonradan değiştirme yok bu yüzden başına properties final ekliyorsun.

Command + . How to open intelligence  flutter —flutter widget custom wıdget çevirme seçeneği 
shift + control + r

Sayfa içinde kullancaksam custom widget başına _ atarak private yap

Padding içeri boşluk margin dışarı boşluk

Comment kaldirma command k u

5 .video

Customwidget  yaparken sen padding kullanirsin margin kullanma onu dışardaki  class belirtler.
Flutterda widget ana hatlar (Primitive) dışarıdan gelir biz gerekli görürsek özelleştiririz
Widget silme islemi command + .
Listtile  Widget dizgin yerlestiremiyorsan kapladigi alana bak bunuda background color degistirerek bakabilirsin

Coreda projede özgü olmayan kodlarını koyuyorsun
Product proceed ortak kulladığın yapıları koyuyorusun
Atomık Disign ?

6. Video 
Bir sayfada setstate tum sayfada state günceller performans icin widget extract widget uygulayarak disari al
Pageciew onboarding kullandigimiz yapi
 50 dk Commdand + space gelen ayrı kontrol etme
Late final bool isOdd; veri  sonradan gelicekse final başına late atayabilirsin
Event loop?


LifeCycle
initState build metodu- sayfa çizilmeden çalışır
DidUpdate ustclassta veri değişimi oldugunda tetiklenen yapı 

@override
  void didChangeDependencies() {
    // initstate sonre calisir drawing once calisir.
    // Sayfa kople draw ed'ld'ginde calisir
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    // ust classta veri degistiginde calisan kod
    // kodda ust classta degisiklik olunca burada ust siniftaki degiklik ugulanir

    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

Widget bindings?

TextField konusunda 
 inputFormatters: konusunu araştır hoca bir paketi kullanıyormuş


7. Video

Debug 

Print , ınspect ,  debug yapama

listVıew

Text-: textScaleFactor metnin tasmada boyutunu düşürüyor
FittedBox - boyut sınırlama
Dıvıder - araya çizgi
İçine listviewlarda içteki sabit yükseklik ver

Listview çizimi üzerine geldiğinde yapar sayfa gözükme bittiğinde oluşturulan wıdgwr dıspose olur
Listivew lazy çalışır
Shrinkwrap sıkıştırma yapıyor kendince doğru kullanım icin vermemeye çalış

Navigator 
Mixing kullanım yiyor
Ca

8.video 


vsync  isterse flutterda 
class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {

Ascribable sıkıştırma yapıyor

Modelleme nedir? Gelen veri tiplerine uygun class yazıyoruz/ CamelCase kullanılıyor

9. vıdeo
Veri locale veya önlene kaydedilir
Servıs işlemleri get,post,put,delete. Post get farklı olarak parametre alır
Veri guvenliğı için veriler database bağlantısı ıle değil servisten gelmelidir.

Model oluşturma Google JSON to dart
JSON veri map halinde gelir. Bunu cast edip modele çeviriyoruz fromJson ıle
Tojson boydan doldurduğumuzda kısmı oluşturuyoruz
Textfeild autofıillhints bak
1.27 dk errorda prınt bırakma kdebug kullan onu static genel kullanım çıkartabilirsin


20 dk postman kullanım evde sende yap
Servicelearnvıew.dart e32
48dk map yapısını chatgpt sor
57 servıcepostmanvıew.dart
Textfıeld input formmatters paketleri incele
1.30 comment model.dart commentlearnvıes.dart


 10 - Pubdev, Paket kullanımı, Özel Textfield geliştirme etc.
Pubdev
shimmer
flutter_spinkit
image_cropper
Pubdev flutter community.dev tavsiye edilen paketler
Paket gıthub erişim pubdev.com da paket bölümde repository bolumunde
Paket içersinde channel, paket channel görürsen natıve dependıcy bağlantısı var oluşturulmuş paket
Brıdge nedir? - natıve kodlara bağlantı kurma 
Paketleri kullanırken sayfanın dışına çıkar sayfanın okunurluğunu arttırırsın
25 dk  info.plist ekleme yapma
Mixin constractor olmayan classlar olarak düşünebilirsin
Mixin on Widget vb. Verip kısıtlama yapabılırsın

44 dk flutter theme generator https://rxlabz.github.io/panache_web/#/ deprecated anlama acısından kullanılabilir
45-thema
Renk ismini butoncolor verme color generator
Main theme: LighTheme().theme,
İconlarda outlıne kullan genelde

#11 Extension, OOP, Mixin, From Validate

9dk
 // Text('data', style: context.textTheme().headline1) asadakinin kisa haline saglar
//  Text('data', style:Theme.of(context).textTheme.bodyLarge),

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

AnimatedCrossFade 2 view areas degisiklik. Kullanım widget gizleme
AnimatedOpacity renk koyulugu
AnimatedDefaultTextStyle text Style degisimi animation
AnimatedIcon animasyonlu iconlar controller property bulunuyor
AnimatedContainer container degisiklikginde boyut, renk animasyon ile yapilmasini sağlıyor
AnimatedList animasyonlu liste çıkarma ekleme yapıyor

37 dk  OOPLearnView

  // burda extends kullanmazasin. Extend standattir.
  //implements  bir classtan baska bir classi copy etme. butun metjodlarini almaktir.
  // kullaniliyor extend implements arastir
Implement ovverride üst classtaki fonksiyonun özelliğini değiştirip kullanma

55 dk State Management initState fonksiyonları baska fileda yazma

//1.adimda function StateLearnViewModel tasidi
//2.adimda extends State<StateManageLearnView> tasidi
//3. StateLearnViewModel  private property public yapti
//4. bu file extends StateLearnViewModel bu sayede fonksiyonlara erisim saglandi
// basarili sekilde business logic ayrildi.

1.03 dk TextFormField ,Form  Learn
TextField validasyon istenirse çözüm olarak Form kullan
Key: bir widgeta dogrudan erisip onun ozelliklerini kullanma
State management onchangeAlways?

#12 Cache katmanı oluşturma, compute, jwt etc.

Cache katmanı internet olmadiginda data gösterme
shared_preferences

Shared key, value seklinde calisiyor .Map yapısı 

https://pub.dev/packages/shared_preferences

Müşteri datası , Adi soy adi çok tavsiye etmiyor.Yerine Hive KULLan

Data, image saklayabilirisin

String veride textfield  int kontrolu
final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }

12 dk change loading tekrar yazmayı engelleyen yapı Generic Yapida
Init state await almaz.Cunku future beklemez.



38dk shared classta kullanma

class UserItems {
  late final List<User> users;
  UserItems() { // constractor yapisi  useritems ilk calistiginda calisir

45dk class shared kullanma 

Json decide ettiginde obje dönüyor encode ettiginde string donuyor
Json encode decode pahali bir islem yerine computed kulanmanizi öneririm

 62 dk Google json decode online
https://codebeautify.org/json-decode-online

Hoca shared bağlamayı singelton yapıyor???? Her seferende inimize etmemek icin
Map konusuna bir bak

 1. 14 dk Token Jwt flutter_secure_storage
Shared veri manupile edilebilir.Bu yüzden müşteri verileri icin daha güvenlidir. iOS keychain icine yazar.
Keycahinde uygulama silsende o data saklanır
121 dk jwt sifrellenmis veri 
Normaelde onemli bilgeleri jwt ile secure ediyorlar jwt parse

#13 Sheet komponenti, Dialog, Xcode Android Studio inceleme, Generic etc.

BOTTOM Sheet - Secim flitreleme
Alert dilaog  - evet hayırlı ekranlar
Snackbar - notıfy vermek

showModalBottomSheet
   // Column kullanim min kullanirsan ekran kaplayacagi min alan kaplar yoksa tum sayfa kaplar
        //sebebi isScroll = true
showModalBottomSheet pop ekranın erken kapanması durumdunda üst klastaki property degisikligi sekteye ugramayabilir(örneğin arkaplan renk degistirme) sebebi   Navigator.of(context).pop(true); contexti yok ediyorsun

Hiçbir zaman ana context yukardaki context veri yazılmaz - öneri

Pop yaptiginde geriye veri döndürmesi icin generic yapıdaki geri donusu kullanabilirsin/ Navigator.of(context).pop<bool>(true); diğer yaklaşım callback kullanmak olacaktır

Inspect : Debug mod baslatmayinca result görmek icin

Widget Divider() cizgi
Widget ekranda gözükmesinde sikinti varsa  container ile background color ata ekranda nasıl gözüküyor bakarsına

Mixing: Eğer bir class içine property almayacak içinde  sadece functıon üreteceksen mixin kullanacaksın

38 dk mıxın kullanarak showModalBottomSheet tum classlarda kullanılacak yapıya getırmek

 48 dk AlertDialog

 63 dk InteractiveViewer: Resme zoom yapabilme ozellıgı kazandırır.

1.06 natıve sos android klosor inceleme
Ios 
Runner workplace çalıştırıyor
Polar paketlerin sos kısmının tutulduğu yer
Sağ click open Xcode
Bundle ıdentıfıer unıq ıd
Orantesion Xcode kapatmayı tavsiye edıyor. Flutter ıslem tetiklemeye gerek kalmaz dıyor.
Otomatik sıgn in -> yaptığınız işler otomatik olarak appledeveloper.com üzerinden imzalanmış ve gözüküyor olur.
Sitede sertıkalar var bunları otomatik yapıyor. Push Apple push ekleme vs.
Elle yapın tavsiye edıyor.Bır kere yapılıyor birdahaki değişmiyor. Otomatikte başkası bir işlem yapsa degıklık oluyormuş. Bununla algılı video var
**Project-> runeer (solda ıkısı) -> localızatıonda turkısh eklemen gereklı) kamera ıznı turkçe olmasını Sağlamak için gerekli vs.
BuildSettıng (ortaust) - çok yol durmuyor sertifika yükleme isteyebilir.Native bir şey kullandığınızda gerekli olabiliyor.
Launch Screen -> splash screen yaptığın yer
116 dk Infoplist - izinlerde istek yazıları yazıyoruz. Kamere izin vb. Info plist düzgün yapmazsan uygula yayınlamada  sıkıntı çıkabiliyor . Kamera izin örneği var. Localıze(sağ orta) türkçeyi ekle
Android
AndroıdManıfest user permıssıon olduğu yer
Apk her telefona yükleniyor app bundle yüklenemiyor
Musterıye apk atmayın fırebase app publısıng gbı çözümler kullanın- önerisi

1.26 dk Genereic
Generic kulandığımız functıon veri tipi değişkenlik gösteriyorsa kullanıyoruz.
Genericte class kullanım alanını sınırlamak içinde kullanılır.
1.31 Test Yazma
 Test icin bende hwa hocanın kisaltma kodları bende yok
- Test funciton olması lazım
- .cast t kullanım 1.45
- Test çalıştırdığında kendisini debug modda çalıştırır.
- Expect beklenen değerden farklı değer gelirse 
BUnlara bir daha bak test generic

#14 Part-Partof, Callback, Dropdown, Custom button, Zeplin etc.



5dk appbar extract yaptığında preffered Size hatası alırsın çözüm yöntemi

Part - part of dosylar arası prıvete iletişim kurma için kullanıyoruz

Dropdownform valıdatıon istiyorsan kullan 

10 dk Callback

19 equalıty eden kullanmak gerek örneği: Listelerde işlem yaparken gerekli olabiliyor
Liste içinde iki eleman referansı aynı sayılıyor. Çünkü referans aynı equalıty bunu kaldırıyorsun.
20 dk atomik widget ? sayfa parçalar ayırarak kodun okunurluğu, parçacığın başka yerlerde kullanımı ve performans artışı sağlıyorsun.

21 callback için code refactor yapıyor önceki haline bakmak için buraya bak

33 callback içindeki fonksiyonu beklemeden sonlanıyor bunun için Future<void> atayıp çözüyoruz.

37 Tabbar yeni bilgiler
Tabbar bir sayfasında servis işlemi varsa future builder kullanabılırsın
42 FutureBuilder -  45 dk sürekli istek atmasını engellemek için  AutomaticKeepAliveClientMixin  set state veri çekemsi istemiyorsan init state fonksıyon yaz
Read only sayfalarda futurebuilder öneriyor

49 dk Zeplin tasarımcı ile kodlamacı arasında bir köprü
Adobe xd free


Başka videolara bak
Map
Generic 
Test
 Callback

#15 Postman, Dio, Klasorleme, Vanilla State ve Provider 
Postman detay kullanım 
https://reqres.in/

4 dk api list sayfa -> inspect> network > unknown fıle > copy as cUrl > postman > import > rawText
7 dk ana url sürekli yazmamak ının postman taktık

10 json to dart {data} şeklinde al

 21 Dio sinifi bir çok yerde kullanacacimiz icin product asidik
 29 Inspect ne geldigini view icinde gible girebilirsin
 itemBuilder: (BuildContext context, int index) {
            inspect(resources[index]);
            return Text(resources[index].name ?? "");
          }),
31 dk color computed cagirma 
35  globale çıkarma computed value = Global extension yazma

 37 State Management  provider
inheritedWidgets - core hali provider zor kullanımı var
Tema degisiklikleri hoca provider kullanarak yapıyormus
ChangeNotifierProvider  scaffold sarmala
notifyListeners — function degisitklk yaptım sayfayı uyar mekanizması
context.read<ThemeNotifer>().changeTheme(); - bir eseferlik 
Sureli dinleme icin wacht
 52 dk. vSelector  // kosula gore state degistirme

56  themNotifier senaryosu icin provider kullanıyor hoca shared local data gore islem yapiyorsun
tum sayfalar etkilenecegi icin ChangeNotifier kullandik
Butonlarda press islemi var o yüzden context.read kullan

1.09 dk json serilization kullanmak icin
build_runner: ^2.4.12
json_annotation: ^4.9.0
  json_serializable: ^6.8.0

Xcode
Build runner extension

@JsonSerializable() ekle
class ResourceModel {

part 'resource_model.g.dart'; ekle file ayni isim > sol alt wacht ==  dart run build_runner build

Notlar 
Isin bittikten sonra wacht kapat
 createToJson: false servise istek atmayacaksan
@JsonSerializable(fieldRename : FieldName.snake) data syntax otomatik düzeltme yapıyor // 
  @JsonKey(name: 'renk') // adam yanlis isimle urettiyse duzeltip kullanma icin
  final String? color;
@JsonKey(fromJson: _fetchCustom) Ron fiyat çok farklı gelemiyor o durumlarda


Temelden Zirveye Flutter: #16 Lottie detayları, Network manager, Test, Singleton etc.
Flutter eğitiminde 16.video serimizde viewlarımızı daha nasıl custom hale getirebiliriz için lottie kullanımı öğrendik. Sıngleton yapısını kavrayarak örneklendirdik. Servis katmanlarımız için network manager oluşturduk. Yazmış olduğumuz servislerimiz için test yazmayı gördük.

Lotıe 
Network lotıe animation url
Dowland lotte json
 repeat: false. Animasyon durdurma
17 dk Controller;   controller with TickerProviderStateMixin  kullanmani bekler.
Controller setstate kullanmana gerek yok.
23dk  Future.microtask(() { // ekranda bir is var bittikten sonra tetiklenmesi istiyorsan kullanabilirsin
 27 dk Singelton ->
Projede hiç değişmeyecek sıklıkla kullanacağım şeyler saklamak istiyorum.
Ben projede bir tane instance ekleyecem yeni instence kullanmayacam

İnstance

 // Örneğin, bir sınıf tanımı yaparsanız:    
 class Araba { String marka; int modelYili; Araba(this.marka, this.modelYili); }.   
var benimArabam = Araba('Toyota', 2020); 
//Burada benimArabam bir instance'dır ve Araba sınıfının belirli bir örneğidir.

Bir ınstance backend kullanması sıkıntı olabilir fakat mobilde bir kullanıcı olduğu için sıkıntı olmuyor
 DurationManager._() // ._() private cekme

Singelton
Flutter'da Singleton deseni, bir sınıfın yalnızca tek bir örneğinin (instance) olmasını ve bu örneğin tüm uygulama genelinde kullanılmasını sağlar. Bu genellikle uygulama durumunu merkezi bir yerden yönetmek için kullanılır.
Aşağıda basit bir Singleton örneği bulunmaktadır:


class Veritabani {
  // 1. Özel bir constructor tanımlıyoruz ki dışarıdan başka instance oluşturulmasın
  Veritabani._privateConstructor();

  // 2. Aynı sınıf içinde statik bir instance oluşturuyoruz
  static final Veritabani _instance = Veritabani._privateConstructor();

  // 3. Dışarıya yalnızca bu instance'ı veriyoruz
  static Veritabani get instance => _instance;

  // Veritabanı ile ilgili işlemler burada olabilir
  void baglan() {
    print("Veritabanına bağlanıldı.");
  }
}

void main() {
  // Singleton örneği kullanımı
  var veritabani1 = Veritabani.instance;
  var veritabani2 = Veritabani.instance;

  veritabani1.baglan();

  // İki örneğin de aynı olup olmadığını kontrol edebiliriz
  if (veritabani1 == veritabani2) {
    print("Aynı Singleton instance'ı kullanılıyor.");
  } else {
    print("Farklı instance'lar kullanılıyor.");
  }
}
————
1 madde acıklaması
Özel (Private) Constructor:

class Veritabani { 
// Bu yapıcı özel (private) olduğu için sınıf dışından çağrılamaz

 Veritabani._privateConstructor(); 
} 
var veritabani = Veritabani._privateConstructor(); // Hata verir! 

33 dk dio mixin aldığımız örneği singelton alır hale getiriyoruz.
Shared kullanımında singelton kullanımı ile yapıyor

42 dk Lıst test
Final List add yapabilirsin çünkü liste referans tutuyor.


final response = users.singleWhere(‘vb’)
    // BIRDEN fazla aynu degerden 'vb' gıbı oldugunda sınglewhere 
      // patlıyor  bu yapıda try kullan
List test crush yitebilirim bunun için pub dev collection paketi list test işlemleri kolaylaştırıyor
49 dk collection paket, test
55dk generate toStrıng
58dk equtable


#17 Navigation package, Mobx, ImagePicker

Herkese merhabalar, Flutter eğitiminde 17. videoda autoroute paketiyle projemizde nasıl navigation kurgulayabileceğimizden bahsettik. Mobx state management öğrenmeye başlayarak view-model klasörümüzü oluşturduk.

9dk autoroute paket,  go router
12 main> routes kullanım
ileri gitme
pushReplacementNamed
 Navigator.of(context).pushNamed(NavigateRoutes.home.withParaf);
Geri gitme olmadan
Navigator.of(context).pushReplacementNamed(NavigateRoutes.home.withParaf);
27 dk arguments = veri yollamak icinn kullanılan yapı
final _modelId = ModalRoute.of(context)?.settings.arguments; veri almak icin
ModalRoute.of(context) initstate calismaz
Future.microtask(() {. Init state çizimi bittikten sonra calisir.Initstate error çözümü icin kullanilabilir

34 -onGenerateRoute,

onGenerateRoute property kurup onlarla iletisime gecebiliyorusun
Mainde> routes veya  onGenerateRoute kullanman lazım

//Switch yaptiginda {} icini sil missing key otamatik dolduruyor
//String replaceFirst 
//fullScreenDialog ekranin  asagidan yukarıdan açılma sebebi

63 Dk Mobx
flutter_mobx paket
mobx_codegen: ^2.6.1

Action bizim viewmodelimiz degislebilecek durumları
Observables
Reactions

Action bizim viewmodelimiz degislebilecek durumları Observables tetiklenip reactions çıkıyor

mobx_codegen - kodları runtime üretmemizi sağlıyor

NavigatorCustom main navigasyon işlemi buradan hoca proje ornekleri yaptıgımız için main-> home yorumdan çıkarıp oraya ekliyor home aktif ise ongererate pasif oluyor
1.15 dk  emilator Farklı iOS sürümleri indirmek için Xcode yöntem
Xcode>setting > platform yapı değişmiş tam çözüm araştır
İ

1.17 dk * Image picker izin alma Xcode
runner> runner> info
İnfoda hocanınkinde türkçe ve İngilizce olarak iki info file daha var önceki videolarda gösterdi izinleri dile göre istek yapabilmek için gerekli

1.18 dk image upload postman
1.22-1.40 uygulama açılmadığında çözüm yolu bakıyor- info.plist görmeme hatası
Hoca tekçe ve ınglizce info plist oluşturdu fakat onları görmedi gecici çözüm olarak onları sildi. Bu arada deneme bir flutter oluşturup iOS klasör denemesi yaptı

Dio- lock : Bazı request atıyoruz diğerleri gitmesin vb. Kullanımı var
1.41 Postman  > body > binary seklinde file yollarsın
Dio- file onSendProgress yapısına göre ekranda yüklenme barı yapabilirsin

1.47 dk json response gelen veriyi once json to dart attı sonradan kodu 

Extension mobs Xcode da flutter mobx
mobx  yazınca kendı dolduruyor extension var.

 @observable // dinlemek istediğimin basına observable atıyorsun
  bool isLoading = false;

 @action // ekrana haber vericekse basına actıon atıyorum
  void changeLoading() {
    isLoading = !isLoading;
  }
View
  Observer(builder: (_) {  // degisim bekledimiz yapıdı Özsever ile dinleme- degisiklik yapıyoruz
            return _imageUploadViewModel.isLoading
                ? const CircularProgressIndicator()
                : const SizedBox();
          }),

—Image upload global işlem olduğundan product altında utility klasörüne ekleyebilirsin

https://pub.dev/packages/image_cropper // resmi aldıktan sonra kesme seçeneği sunar


#18 Picker, Vexana, Runner düşüncesi ve detayları
Widget tree kavramı araştır
Test edilebilir kod yasısı için konusu
O — Open-closed principle
8-17 dk solid açık kaplalık prensibi doğrultusunda abstract class oluşturuyor
Varible(int,file vb) ortak ise abstract classın içinde tanımlıyorsun
Builder pattern?
Factory pattern?  Daha test edilebilir kod yapıları için
Hoca core işlemlere test yazmayı tercih ediyor. Uı test yazmak  pek yapmıyor

17 dk servis isteğe test yazımı yapımı -ReqResProvider classını test etme
19- mockito: 
 kullanımı ile test ? Hocanın kullandığı bir yöntem
 22 script klasör içersinde terminalde uygulama geliştirmede  kullanacağımız script tutuyoruz.
22 - Hoca cammend list plugin diye bir şey kullanıyor
@GenerateMocks([ReqResProvider]) req_res_test.dart bunu ekle .moks kendi oluşturuyor. Bunu build_runner ile yapıyorsun

Test genelde local cache işlemleri için yapılıyor.Diğeri servis genel olarak ona çok yapman gerekmiyor.

44 dk Paketler Kartal
Hoca kod okuma için kartal GitHub incelemeyi öneriyor

54 vexana 
vexana dio da torsion, from json kurtardığımız yapı
// typedef ImageLoader = void Function(String url); surreali kullandigin rapida tekrar yazmamak icin typedef kullanabilirsin


#19 BloC, Localization, Moduler, Snippet Fastlane etc.

19. seride bloc başlayarak cubit ile login sayfamızı oluşturduk token tutarak, nasıl snippet yazacağımızdan bahsettik. Localization ile projemizde dil desteği nasıl olacağına değindik ve kolayca versiyon çıkma yöntemi olan fastlane değinildi.

Bloc once verinin doğruluğu için test yazıldı
8 dk postman kullanım ornegi
Login token genel olduğu için product oluşturduk
12 dk sinippet klasör düzenlemesi 
12dk model class olusturuken vexina icin extends INetworkModel calistiriyorsun
class LoginModel extends INetworkModel<LoginModel> 
15-17 servise file yazımı
Service kisminda  network manager instance dışarıdan alman lazım
Vexana yapısı değişmiş  login service değiştirdim <IResponseModel<TokenModel?>?> ->. TokenModel
17- test yazma
23.dk hocanın vs_code_dart_json.dart hocanın ayar dosyası istersen kur
34 vıew yazma textfield email text field validators regex yazman lazım düzeltme için bunu internetten bulabilirsin kartal paketi içinde de var
39 Cubit-VıewModel.dart
Cubit state diye bir kavram var .Durumları kontrol edıyorsun
43 dakka logınstate neden equtable  kullanıyor?
BlocBuilder içinde bloc builder kullanma sebebi scafoldun context var onu ezmek için degisiklik olacak uı bloc provider ile sarmalıyoruz
58 dk objeyi copywith yeniden üretme. Copywith  veri yeni hali varsa güncellenir degisiklik yoksa eski hal saklanır
60 dk blocSelector Compenent- tam anlamadım ama -  ana dalda olunca erişebilirsin ama nagite ile baska state olunca erisemezsin
62 dk IgnorePointer view etkileşimi engelliyor. Loadıng state durumları için kullanılıyor
1.09 blocconsumer dinleme yapar küçük widgetlarda kullan tüm sayfa değil

1.16 Snippet
Çok yerde yazdığın kodları nasıl ortaklaştırabilirim Snippet ile.
$1 ile deigisecek yapıları koyuyorsun  $1View , $1StateFull
1.23 hocanın kendi flutter snippeti  kodu kendi gist var diyor
https://gist.github.com/VB10
Veli hoca flutter snippets
https://gist.github.com/VB10/d71a90971a7d86450254a2bea3db1c04

1.24 token expression , geçerlilik yitirme: vexana kullanıyor
Token bittiğinde 401 yersin
1.26 hocanın coin kaydırmasıyla yeri değişen yapısını örnek gösteriyor
1.28 main.dart builder method- telefon ayarlarında telefonun yazı tipini büyütme kalınlaştırma durumlarında flutter bunu otomatik uygulamaya kullanıyor. Bu durumları kontrol etmek için builder methodunu kullanıyoruz.
1.32 Device_ Preview Paket
1.33 easy_localization: ^3.0.7
Bunu kullanırken pubdev talimatları inceleme ve uy
 asset altında file ismi doğru olsun
 En-Us.file ortak kullanılan ismi değişmeyenleri ayrı bir grupta ortak şekilde grupla
Script var -> flutter pub run easy_localization:generate  -O lib/product/init/lang -f keys 
1.44 analysis_options.yaml kural yazıyorsun mesela print yazamasın gibi
1.46 analyzer , exclude hangi dosyalara bakma problems çok büyümesini engellemek için
1.48 pigeon method channel ile native android iOS projesi haberleşiyor.

1.55 compute kavramı
Uı çok bekletecek method ‘dart işlemi’ sen ekranda bekletme  main thread işlem yapma ayrı bir thread işlem yap  dediğimiz yapıda kullanıyoruz
2.04 library olusturma
Library oluşturma test yazımı için iyi bir deneyim sunuyor.
2.14 fix import all tüm proje bittiğinde problemi kaldırmak için kullanmabilrisin-importları fix ediyor
2.15 firebase - 
cloud messaging, dynamic links çok onemli
Monitering crash takibi için 
2.17 fastlane - projenize paket çıkarken fastlane kullanın



Servis Sayfasi oluşturma
1-postman veriyi kontrol et
2- Json serializable modeli oluştur
3- Service file ouster
4- Test file testini yap
5- view ouster




