# mishkal
  Mishkal Arabic text vocalization software  مشكال لتشكيل النصوص العربية

[![downloads]( https://img.shields.io/sourceforge/dt/mishkal.svg)](http://sourceforge.org/projects/mishkal)
[![downloads]( https://img.shields.io/sourceforge/dm/mishkal.svg)](http://sourceforge.org/projects/mishkal)
[![github](https://img.shields.io/badge/mishkal-%24-green.svg)](https://github.com/linuxscout/mishkal)

<div align="center">
    <img src="https://github.com/tarekDZ2019/mishkal-App/blob/master/images/home1.png" width="250px"</img>
    <img src="https://github.com/tarekDZ2019/mishkal-App/blob/master/images/home2.png" width="250px"</img> 
</div>
<div align="center">
    <img src="https://github.com/tarekDZ2019/mishkal-App/blob/master/images/text2.png" width="250px"</img> 
    <img src="https://github.com/tarekDZ2019/mishkal-App/blob/master/images/text1.png" width="250px"</img> 
</div>

How does Mishkal App work:
---------------------- 
Mishkal app  build in flutter using dart.
Mishkal app based on http request from mishkal website , implement Mvc architecture .  
version 1.0

How does Mishkal work:
----------------------
Mishkal use a rule based method to detect relations and diacritics,
First, it analyzes all morphological cases, it generates all possible diacritized word forms, by detecting all affixes and check it in a dictionary.
second, It add word frequency to each word.
The two previous steps are made by support/Qalsadi ( arabic morphological analyzer), the used dictionary is a separated project named 'Arramooz:  arabic dictionnary for morphology".
Third, we use a syntax analyzer  to detect all possible relations between words. The syntax library is named support/ArAnaSyn. This analyzer is basic for the moment, it use only linear relations between adjacent words.

Forth,  all data generated and relations will be analyzed semantically, to detect semantic relation in order to reduce ambiguity. The use libary is support/asmai ( Arabic semantic analysis). The semantic relations extraction is based on corpus. The used corpus is named "Tashkeela: arabic vocalized texts corpus".


In the final stage, The module mishkal/tashkeel tries to select the suitable word in the context,
it tries to get evidents cases, or more related cases, else, it tries to select more probable case, using some rules like select a stop word by default, or select Mansoub case by default.

The rest of program provides functions to handles interfaces and API with web/desktop or command line



## Featured Posts
-  “مشكال” لتشكيل النصوص العربية بإحترافية  [كمال فودة](http://www.prameg2day.com/?p=5194)
-  كيفيشكيل الحروف والكلمات أو حتى نصوص باللغة العربية في ثواني من خلال متصفحك-  [رضا بوربعة](http://www.th3professional.com/2015/09/blog-post_36.html)
-  خدمة عربية جديدة : تشكيل النصوص العربية [Sam Hamou](http://3-arabi.blogspot.com/2015/05/mishkal-arabic-3arabi.html)
-  إطلاق الإصدار التجريبي برنامج مشكال لتشكيل النصوص العربية
[Zaid AlSaadi](http://itwadi.com/node/2184)
- مشكال: الطريق نحو التشكيل [مدونة اليراع](https://tahadz.wordpress.com/2011/07/08/mishkal00/)
-  مشكال لتشكيل النصوص العربية: إطلاق واجهة سطح المكتب [مدونة اليراع](https://tahadz.wordpress.com/2012/01/07/mishkaldesktop/)
- تعرّف على مشاريع “تحدّث” .. مشاريعٌ للغةٍ عظيمة [محمد هاني صباغ](http://www.arageek.com/tech/2014/11/28/tahdz-new-services-for-arabic-writing.html)

