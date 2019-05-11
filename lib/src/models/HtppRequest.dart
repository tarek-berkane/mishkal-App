import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class JsonRequest {

  // Male Http request to get result 
   static Future<Map> jsonRequest(String text, String option) async {
   // print("****$_action");
    Map<String, dynamic> user;
    final _url = 'http://tahadz.com/mishkal/ajaxGet';
    var response = await http.put(_url, body: {"text": text, "action": _takeAction[option]});
   try{
     user = jsonDecode(response.body);
   }catch (e){
     user = {"result": 'لا تستخدم "" او \' \' من فضلك' , "order": 0};
   }finally {
    return user;
   }
  }
static const Map _takeAction ={
  'المكونات':'',
  'تصنيف':'Wordtag',
  'المتلازمات':'show_collocations',
  'المسميات':'extractNamed',
  'المعدودات':'extractNumbered',
  'تفريق':'Tokenize',
  'تقسيم':'',
  'ثنائيات':'',
  'توليد':'Affixate',
  'تنميط':'Normalize',
  'تحديد اللغة':'Language',
  'ترقيم':'extractNumbered',
  'ترتيب':'',
  'قلب الحروف':'Unshape',
  'قصيدة عمودية':'Poetry',
  'تحليل':'LightStemmer',
   'تدقيق':'SpellCheck',
   'تشكيل':'TashkeelText'
  };

}


