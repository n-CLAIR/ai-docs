Þ          Ô                              ¡  
   ­     ¸    Æ  n   Î     =     D  û   L     H     Û     ç     í  Q   ö  *   H     s  1        ¿     Æ  5   Ï       |                 £  
   ¯     º  Ê   È  T        è     ï  Ó   ÷  u   Ë	     A
     M
     S
  :   \
  *   
     Â
  1   Ü
            6        U   CDN CDN version 3.x Data format How to use Make Git page Output ì base64ë¡ ì¸ì½ë© ë ê°ìëë¤. ì´ ê°ì window ë´ì¥ í¨ìì¸ `atob`_ ì ì¬ì©íë©´ base64ë¡ ëì½ë© ë ê²°ê³¼ ê°ì´ string íìì¼ë¡ ë¦¬í´ëë©°, `JSON.parse`_ ë¥¼ ì¬ì©íë©´ JSONì¼ë¡ ë¦¬í´ëì´ ì¬ì©í  ì ììµëë¤. URLì `https://dev.apis.naver.com/nsml_/infer/local`_ ì ì¬ì©íê³  ìì¼ë©°, ë³ê²½ë  ì ììµëë¤. Usage: Web app Web appì ëª¨ë¸ì ìë ¥ì ëí ê²°ê³¼ê°ì ìë²ë¥¼ ì¤ííì§ ììë íì¤í¸ ê°ë¥íë©°, ì¤íìì ëì¨ ê²°ê³¼ë¥¼ ì¬ë¬ ì¬ëê³¼ ì½ê² ê³µì í  ì ììµëë¤. Web appì :ref:`nsml infer<nsml infer>` ë¥¼ ì¬ì©í©ëë¤. Web appì ì¬ì©íê¸° ìí´ì `https://dev.apis.naver.com/nsml_/infer/local`_ ë¡ ëª¨ë¸ ì ë³´ì ìë ¥ ë°ì´í°ë¥¼ ì ë¬í´ì¼ í©ëë¤. Web example axios git page http ë¤í¸ìí¬ë¥¼ í¸ì¶íìì ë ê²°ê³¼ê° ìëì ê°ì´ ëìµëë¤. https://oss.navercorp.com/nsml/nsml_webapp https://pages.github.com/ https://pages.oss.navercorp.com/nsml/nsml_webapp/ jQuery source : ìëë mnist webapp ìììëë¤. ( `jquery`_ ) ìì 01:30 Project-Id-Version: NSML 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2018-10-26 05:04+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: en_US
Language-Team: en_US <LL@li.org>
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 CDN CDN version 3.x Data format How to use Make Git page Output is a base64 encoded value. This value is returned by result of decoded base64 when using `atob`_ which is a window built-in function. You can get return value as JSON type by using `JSON.parse`_. The URL is `https://dev.apis.naver.com/nsml_/infer/local`_ and is subject to change. Usage: Web app Web app can test the results of inputs to the model without having to run the server, and it is easy to share the results from the experiment with multiple people. The Web app uses :ref:`nsml infer<nsml infer>`. To use Web app, you need to pass model information and input data to `https://dev.apis.naver.com/nsml_/infer/local`_. Web example axios git page When you call the http network, the result is shown below. https://oss.navercorp.com/nsml/nsml_webapp https://pages.github.com/ https://pages.oss.navercorp.com/nsml/nsml_webapp/ jQuery source : Below is an example of the mnist webapp. ( `jquery`_ ) Video 01:30 