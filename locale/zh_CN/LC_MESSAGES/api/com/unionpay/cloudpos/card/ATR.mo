��          |               �      �      �      �      �                   z   $     �     �  Q   �  �       �     �     �     �     �     �     �  z   �     _     u  Q   �   ATR ATR数据buffer. Constructors Historical Bytes是用于描述卡片的物理特性或额外信息比如厂商或芯片类型或卡片序列号。 ISO/IEC 7816-4 定义了Historical Bytes的结构和含义，他是一个可变长度的15个字节长度以内的byte数组。 EMV中虽然规定了Historical Bytes的结构，但是并不是所有卡片都会返回该数据。 另外目前android的原声NFC接口中是含有该接口. 具体怎么解析请参考EMV 4.3 Book 1 Application Independent ICC to Terminal Interface Requirements。 Methods getBytes getHistoricalBytes 取得包含发卡人、卡类型、操作系统等信息的TLV格式的数据,如果通讯协议不支持则返回null。 取得所有ATR数据 数据buffer 本类用于IC卡的ATR数据对象,通过ATR可以识别不同的卡类别等。 Project-Id-Version: Sphinx-doc 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-13 18:05+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hans_CN
Language-Team: zh_Hans_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 ATR ATR数据buffer. Constructors Historical Bytes是用于描述卡片的物理特性或额外信息比如厂商或芯片类型或卡片序列号。 ISO/IEC 7816-4 定义了Historical Bytes的结构和含义，他是一个可变长度的15个字节长度以内的byte数组。 EMV中虽然规定了Historical Bytes的结构，但是并不是所有卡片都会返回该数据。 另外目前android的原声NFC接口中是含有该接口. 具体怎么解析请参考EMV 4.3 Book 1 Application Independent ICC to Terminal Interface Requirements。 Methods getBytes getHistoricalBytes 取得包含发卡人、卡类型、操作系统等信息的TLV格式的数据,如果通讯协议不支持则返回null。 取得所有ATR数据 数据buffer 本类用于IC卡的ATR数据对象,通过ATR可以识别不同的卡类别等。 