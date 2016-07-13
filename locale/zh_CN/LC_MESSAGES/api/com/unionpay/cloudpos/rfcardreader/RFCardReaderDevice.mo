��    V      �              |      }  F   �  3   �  4     *   N  G   y  F   �  G     G   P  G   �  G   �     (     E  	   L     V     b     w     �     �     �     �     �     �  9   �  9   )	     c	     q	  	   }	  
   �	  	   �	  
   �	  	   �	  
   �	  	   �	     �	  O   �	  �  )
     �     �     �     �     �     �     �       �        �  l   �  O   +  K   {  �   �  �   �  ~   �  x     ^   |  �   �  �   g  m   �  ]   g     �     �     �  n   �  0   g  �   �  0   �  �   �  �   v  P   .  n     o   �  �  ^  L      O   m     �     �  L   �     3     O     a     }  �   �          )  v  6  �  �      6  F   W  3   �  4   �  *     G   2  F   z  G   �  G   	   G   Q   G   �      �      �   	   !     !     !     0!     E!     S!     _!     o!     �!     �!  9   �!  9   �!     "     *"  	   6"  
   @"  	   K"  
   U"  	   `"  
   j"  	   u"     "  O   �"  �  �"     g$     o$     x$     �$     �$     �$     �$     �$  �   �$     g%  l   w%  O   �%  K   4&  �   �&  �   `'  ~   =(  x   �(  ^   5)  �   �)  �    *  m   �*  ]    +     ~+     �+     �+  n   �+  0    ,  �   Q,  0   L-  �   }-  �   /.  P   �.  n   8/  o   �/  �  0  L   �1  O   &2     v2     �2  L   �2     �2     3     3     63  �   R3     �3     �3  v  �3   **See also:** :java:ref:`Device` 106 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 14443卡TYP B模式: ISO/IEC 14443 Type B compliant 14443卡TYPE A模式: ISO/IEC 14443 Type A compliant 15693通讯模式: ISO/IEC 15693 compliant 1667 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 212 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 3390 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 424 kbps 通讯速率，用于 \ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 6670 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 848 kbps 通讯速率，用于 \ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ Felica通讯模式: FeliCa® Fields MODE_AUTO MODE_FELICA MODE_ISO14443_TYPE_A MODE_ISO14443_TYPE_B MODE_ISO15693 MODE_MIFARE MODE_NFC_ACTIVE MODE_NFC_PASSIVE Methods Mifare卡通讯模式: MIFARE® NFC 主动通讯模式: ISO/IEC 18092 (ECMA 340: NFCIP-1) NFC 被动通讯模式: ISO/IEC 18092 (ECMA 340: NFCIP-1) PARAM_NB_SLOT PARAM_SPEED RATE_106K RATE_1667K RATE_212K RATE_3390K RATE_424K RATE_6670K RATE_848K RFCardReaderDevice \ **RFCardReaderDevice**\ 定义了所有非接触式IC卡阅读器的接口。 \ :java:ref:`MODE_AUTO <MODE_AUTO>`\  \ :java:ref:`MODE_NFC_PASSIVE <MODE_NFC_PASSIVE>`\  \ :java:ref:`MODE_NFC_ACTIVE <MODE_NFC_ACTIVE>`\  \ :java:ref:`MODE_ISO14443_TYPE_A <MODE_ISO14443_TYPE_A>`\  \ :java:ref:`MODE_ISO14443_TYPE_B <MODE_ISO14443_TYPE_B>`\  \ :java:ref:`MODE_ISO15693 <MODE_ISO15693>`\  \ :java:ref:`MODE_MIFARE <MODE_MIFARE>`\  \ :java:ref:`MODE_FELICA <MODE_FELICA>`\ getMode getSpeed listenForCardAbsent listenForCardPresent open setSpeed waitForCardAbsent waitForCardPresent 为了正常访问非接触式IC卡阅读器，请在Android Manifest文件中设置非接触式IC卡阅读器访问权限，具体如下所示： 以下常量： 其中，"cloudpos.device.contactlesscard"是标识非接读卡器的字符串，由具体的实现定义。 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。 只有当超时发生或者操作正常完成，本次调用才会返回。 如果timeout时间到了，但用户还没有移除卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回 如果timeout时间到了，但还没有扫描到卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回 如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待移除卡，直到移除卡或取消。 如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待，直到扫描到卡或取消。 如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。 如果超时发生，会返回操作结果为 \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。 如果超时发生，会返回这个操作结果： \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。 打开某个逻辑ID的非接触式IC卡阅读器，并指定模式。只有符合模式的卡会被发现。 按照非接卡的通讯参数设定和模式设定，启动一次扫描非接卡的过程。 操作监听者。 操作结果 放碰撞卡槽号 方法通过设置timeout来决定最多等待多长时间。请求开始执行的时候timeout开始计时。 最大扫描时间，通过时间常量设定。 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。 最大等待时间，通过时间常量设定。 本操作是个异步调用。当找到非接卡后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法 返回。 本操作是个异步调用。当用户移除卡发生后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法 返回。 本方法会正确响应 \ :java:ref:`cancelRequest()`\ 方法来取消操作。 本方法是上述对应的 \ :java:ref:`listenForCardAbsent(OperationListener,int)`\ 方法的同步版本。 本方法是上述对应的 \ :java:ref:`listenForCardPresent(OperationListener,int)`\ 方法的同步版本。 根据底层定义只能返回一张卡片。结果可以通过 \ :java:ref:`RFCardReaderOperationResult.getCard()`\ 获得。 如果读卡设备上放入多张卡片，返回错误：\ :java:ref:`ERR_MULTI_CARD <RFCardReaderOperationResult.ERR_MULTI_CARD>`\ ，不返回任何卡片。 本方法会按照\ :java:ref:`setSpeed(int) <setSpeed(int)>`\ 定义的参数扫描卡片。如果没有定义，本方法会按照读卡器默认参数扫描。 由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法 由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法。 监听卡片移除动作。 自动模式 设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示： 设置通讯速率参数： 读卡器逻辑ID 返回当前通讯模式。 返回通讯速率参数： 通常程序必须定义自己的OperationListener，在回调函数handleResult()中对返回结果进行处理。如下所示： 通讯模式 通讯速率 非接触式IC卡阅读器对象主要进行非接卡读卡操作。其中等卡及移卡都包括同步和异步两种方式。同步方式会将主线程锁定，直到有结果返回，超时或者被取消。 异步方式不会锁定主线程，当有结果时，会回调监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法。 Project-Id-Version: Sphinx-doc 1.0
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
 **See also:** :java:ref:`Device` 106 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 14443卡TYP B模式: ISO/IEC 14443 Type B compliant 14443卡TYPE A模式: ISO/IEC 14443 Type A compliant 15693通讯模式: ISO/IEC 15693 compliant 1667 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 212 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 3390 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 424 kbps 通讯速率，用于 \ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 6670 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ 848 kbps 通讯速率，用于 \ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\ Felica通讯模式: FeliCa® Fields MODE_AUTO MODE_FELICA MODE_ISO14443_TYPE_A MODE_ISO14443_TYPE_B MODE_ISO15693 MODE_MIFARE MODE_NFC_ACTIVE MODE_NFC_PASSIVE Methods Mifare卡通讯模式: MIFARE® NFC 主动通讯模式: ISO/IEC 18092 (ECMA 340: NFCIP-1) NFC 被动通讯模式: ISO/IEC 18092 (ECMA 340: NFCIP-1) PARAM_NB_SLOT PARAM_SPEED RATE_106K RATE_1667K RATE_212K RATE_3390K RATE_424K RATE_6670K RATE_848K RFCardReaderDevice \ **RFCardReaderDevice**\ 定义了所有非接触式IC卡阅读器的接口。 \ :java:ref:`MODE_AUTO <MODE_AUTO>`\  \ :java:ref:`MODE_NFC_PASSIVE <MODE_NFC_PASSIVE>`\  \ :java:ref:`MODE_NFC_ACTIVE <MODE_NFC_ACTIVE>`\  \ :java:ref:`MODE_ISO14443_TYPE_A <MODE_ISO14443_TYPE_A>`\  \ :java:ref:`MODE_ISO14443_TYPE_B <MODE_ISO14443_TYPE_B>`\  \ :java:ref:`MODE_ISO15693 <MODE_ISO15693>`\  \ :java:ref:`MODE_MIFARE <MODE_MIFARE>`\  \ :java:ref:`MODE_FELICA <MODE_FELICA>`\ getMode getSpeed listenForCardAbsent listenForCardPresent open setSpeed waitForCardAbsent waitForCardPresent 为了正常访问非接触式IC卡阅读器，请在Android Manifest文件中设置非接触式IC卡阅读器访问权限，具体如下所示： 以下常量： 其中，"cloudpos.device.contactlesscard"是标识非接读卡器的字符串，由具体的实现定义。 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。 只有当超时发生或者操作正常完成，本次调用才会返回。 如果timeout时间到了，但用户还没有移除卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回 如果timeout时间到了，但还没有扫描到卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回 如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待移除卡，直到移除卡或取消。 如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待，直到扫描到卡或取消。 如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。 如果超时发生，会返回操作结果为 \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。 如果超时发生，会返回这个操作结果： \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。 打开某个逻辑ID的非接触式IC卡阅读器，并指定模式。只有符合模式的卡会被发现。 按照非接卡的通讯参数设定和模式设定，启动一次扫描非接卡的过程。 操作监听者。 操作结果 放碰撞卡槽号 方法通过设置timeout来决定最多等待多长时间。请求开始执行的时候timeout开始计时。 最大扫描时间，通过时间常量设定。 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。 最大等待时间，通过时间常量设定。 本操作是个异步调用。当找到非接卡后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法 返回。 本操作是个异步调用。当用户移除卡发生后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法 返回。 本方法会正确响应 \ :java:ref:`cancelRequest()`\ 方法来取消操作。 本方法是上述对应的 \ :java:ref:`listenForCardAbsent(OperationListener,int)`\ 方法的同步版本。 本方法是上述对应的 \ :java:ref:`listenForCardPresent(OperationListener,int)`\ 方法的同步版本。 根据底层定义只能返回一张卡片。结果可以通过 \ :java:ref:`RFCardReaderOperationResult.getCard()`\ 获得。 如果读卡设备上放入多张卡片，返回错误：\ :java:ref:`ERR_MULTI_CARD <RFCardReaderOperationResult.ERR_MULTI_CARD>`\ ，不返回任何卡片。 本方法会按照\ :java:ref:`setSpeed(int) <setSpeed(int)>`\ 定义的参数扫描卡片。如果没有定义，本方法会按照读卡器默认参数扫描。 由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法 由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法。 监听卡片移除动作。 自动模式 设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示： 设置通讯速率参数： 读卡器逻辑ID 返回当前通讯模式。 返回通讯速率参数： 通常程序必须定义自己的OperationListener，在回调函数handleResult()中对返回结果进行处理。如下所示： 通讯模式 通讯速率 非接触式IC卡阅读器对象主要进行非接卡读卡操作。其中等卡及移卡都包括同步和异步两种方式。同步方式会将主线程锁定，直到有结果返回，超时或者被取消。 异步方式不会锁定主线程，当有结果时，会回调监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法。 