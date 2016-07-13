.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos OperationListener

.. java:import:: com.unionpay.cloudpos OperationResult

.. java:import:: com.unionpay.cloudpos TimeConstants

RFCardReaderDevice
==================

.. java:package:: com.unionpay.cloudpos.rfcardreader
   :noindex:

.. java:type:: public interface RFCardReaderDevice extends Device, TimeConstants

   \ **RFCardReaderDevice**\ 定义了所有非接触式IC卡阅读器的接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      RFCardReaderDevice rFCardReaderDevice =
              (RFCardReaderDevice) POSTerminal.getInstance().getDevice("cloudpos.device.rfcardreader");

   其中，"cloudpos.device.contactlesscard"是标识非接读卡器的字符串，由具体的实现定义。

   非接触式IC卡阅读器对象主要进行非接卡读卡操作。其中等卡及移卡都包括同步和异步两种方式。同步方式会将主线程锁定，直到有结果返回，超时或者被取消。 异步方式不会锁定主线程，当有结果时，会回调监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法。

   为了正常访问非接触式IC卡阅读器，请在Android Manifest文件中设置非接触式IC卡阅读器访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_CONTACTLESS_CARD"/>

   **See also:** :java:ref:`Device`

Fields
------
MODE_AUTO
^^^^^^^^^

.. java:field::  int MODE_AUTO
   :outertype: RFCardReaderDevice

   自动模式

MODE_FELICA
^^^^^^^^^^^

.. java:field::  int MODE_FELICA
   :outertype: RFCardReaderDevice

   Felica通讯模式: FeliCa®

MODE_ISO14443_TYPE_A
^^^^^^^^^^^^^^^^^^^^

.. java:field::  int MODE_ISO14443_TYPE_A
   :outertype: RFCardReaderDevice

   14443卡TYPE A模式: ISO/IEC 14443 Type A compliant

MODE_ISO14443_TYPE_B
^^^^^^^^^^^^^^^^^^^^

.. java:field::  int MODE_ISO14443_TYPE_B
   :outertype: RFCardReaderDevice

   14443卡TYP B模式: ISO/IEC 14443 Type B compliant

MODE_ISO15693
^^^^^^^^^^^^^

.. java:field::  int MODE_ISO15693
   :outertype: RFCardReaderDevice

   15693通讯模式: ISO/IEC 15693 compliant

MODE_MIFARE
^^^^^^^^^^^

.. java:field::  int MODE_MIFARE
   :outertype: RFCardReaderDevice

   Mifare卡通讯模式: MIFARE®

MODE_NFC_ACTIVE
^^^^^^^^^^^^^^^

.. java:field::  int MODE_NFC_ACTIVE
   :outertype: RFCardReaderDevice

   NFC 主动通讯模式: ISO/IEC 18092 (ECMA 340: NFCIP-1)

MODE_NFC_PASSIVE
^^^^^^^^^^^^^^^^

.. java:field::  int MODE_NFC_PASSIVE
   :outertype: RFCardReaderDevice

   NFC 被动通讯模式: ISO/IEC 18092 (ECMA 340: NFCIP-1)

PARAM_NB_SLOT
^^^^^^^^^^^^^

.. java:field::  int PARAM_NB_SLOT
   :outertype: RFCardReaderDevice

   放碰撞卡槽号

PARAM_SPEED
^^^^^^^^^^^

.. java:field::  int PARAM_SPEED
   :outertype: RFCardReaderDevice

   通讯速率

RATE_106K
^^^^^^^^^

.. java:field::  int RATE_106K
   :outertype: RFCardReaderDevice

   106 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\

RATE_1667K
^^^^^^^^^^

.. java:field::  int RATE_1667K
   :outertype: RFCardReaderDevice

   1667 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\

RATE_212K
^^^^^^^^^

.. java:field::  int RATE_212K
   :outertype: RFCardReaderDevice

   212 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\

RATE_3390K
^^^^^^^^^^

.. java:field::  int RATE_3390K
   :outertype: RFCardReaderDevice

   3390 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\

RATE_424K
^^^^^^^^^

.. java:field::  int RATE_424K
   :outertype: RFCardReaderDevice

   424 kbps 通讯速率，用于 \ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\

RATE_6670K
^^^^^^^^^^

.. java:field::  int RATE_6670K
   :outertype: RFCardReaderDevice

   6670 kbps 通讯速率，用于\ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\

RATE_848K
^^^^^^^^^

.. java:field::  int RATE_848K
   :outertype: RFCardReaderDevice

   848 kbps 通讯速率，用于 \ :java:ref:`PARAM_SPEED <PARAM_SPEED>`\

Methods
-------
getMode
^^^^^^^

.. java:method::  int getMode() throws DeviceException
   :outertype: RFCardReaderDevice

   返回当前通讯模式。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 以下常量：

   \ :java:ref:`MODE_AUTO <MODE_AUTO>`\  \ :java:ref:`MODE_NFC_PASSIVE <MODE_NFC_PASSIVE>`\  \ :java:ref:`MODE_NFC_ACTIVE <MODE_NFC_ACTIVE>`\  \ :java:ref:`MODE_ISO14443_TYPE_A <MODE_ISO14443_TYPE_A>`\  \ :java:ref:`MODE_ISO14443_TYPE_B <MODE_ISO14443_TYPE_B>`\  \ :java:ref:`MODE_ISO15693 <MODE_ISO15693>`\  \ :java:ref:`MODE_MIFARE <MODE_MIFARE>`\  \ :java:ref:`MODE_FELICA <MODE_FELICA>`\

getSpeed
^^^^^^^^

.. java:method::  int getSpeed() throws DeviceException
   :outertype: RFCardReaderDevice

   返回通讯速率参数：

listenForCardAbsent
^^^^^^^^^^^^^^^^^^^

.. java:method::  void listenForCardAbsent(OperationListener listener, int timeout) throws DeviceException
   :outertype: RFCardReaderDevice

   监听卡片移除动作。

   本操作是个异步调用。当用户移除卡发生后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法 返回。

   本方法会正确响应 \ :java:ref:`cancelRequest()`\ 方法来取消操作。

   通常程序必须定义自己的OperationListener，在回调函数handleResult()中对返回结果进行处理。如下所示：

   .. parsed-literal::

      OperationListener operationListener = new OperationListener(){
          @Override
          public void handleResult(OperationResult result) {
              // handleResult
          }
      });

   方法通过设置timeout来决定最多等待多长时间。请求开始执行的时候timeout开始计时。

   如果timeout时间到了，但用户还没有移除卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回

   如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待移除卡，直到移除卡或取消。

   如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。

   :param listener: 操作监听者。
   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

listenForCardPresent
^^^^^^^^^^^^^^^^^^^^

.. java:method::  void listenForCardPresent(OperationListener listener, int timeout) throws DeviceException
   :outertype: RFCardReaderDevice

   按照非接卡的通讯参数设定和模式设定，启动一次扫描非接卡的过程。

   本操作是个异步调用。当找到非接卡后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法 返回。

   根据底层定义只能返回一张卡片。结果可以通过 \ :java:ref:`RFCardReaderOperationResult.getCard()`\ 获得。 如果读卡设备上放入多张卡片，返回错误：\ :java:ref:`ERR_MULTI_CARD <RFCardReaderOperationResult.ERR_MULTI_CARD>`\ ，不返回任何卡片。 本方法会按照\ :java:ref:`setSpeed(int) <setSpeed(int)>`\ 定义的参数扫描卡片。如果没有定义，本方法会按照读卡器默认参数扫描。

   本方法会正确响应 \ :java:ref:`cancelRequest()`\ 方法来取消操作。

   通常程序必须定义自己的OperationListener，在回调函数handleResult()中对返回结果进行处理。如下所示：

   .. parsed-literal::

      OperationListener operationListener = new OperationListener(){
          @Override
          public void handleResult(OperationResult result) {
              // handleResult
          }
      });

   方法通过设置timeout来决定最多等待多长时间。请求开始执行的时候timeout开始计时。

   如果timeout时间到了，但还没有扫描到卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回

   如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待，直到扫描到卡或取消。

   如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。

   :param listener: 操作监听者。
   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

open
^^^^

.. java:method::  void open(int logicalID, int mode) throws DeviceException
   :outertype: RFCardReaderDevice

   打开某个逻辑ID的非接触式IC卡阅读器，并指定模式。只有符合模式的卡会被发现。

   :param logicalID: 读卡器逻辑ID
   :param mode: 通讯模式
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

setSpeed
^^^^^^^^

.. java:method::  void setSpeed(int value) throws DeviceException
   :outertype: RFCardReaderDevice

   设置通讯速率参数：

waitForCardAbsent
^^^^^^^^^^^^^^^^^

.. java:method::  RFCardReaderOperationResult waitForCardAbsent(int timeout) throws DeviceException
   :outertype: RFCardReaderDevice

   本方法是上述对应的 \ :java:ref:`listenForCardAbsent(OperationListener,int)`\ 方法的同步版本。

   只有当超时发生或者操作正常完成，本次调用才会返回。

   由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法。

   如果超时发生，会返回这个操作结果： \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。

   :param timeout: 最大等待时间，通过时间常量设定。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 操作结果

waitForCardPresent
^^^^^^^^^^^^^^^^^^

.. java:method::  RFCardReaderOperationResult waitForCardPresent(int timeout) throws DeviceException
   :outertype: RFCardReaderDevice

   本方法是上述对应的 \ :java:ref:`listenForCardPresent(OperationListener,int)`\ 方法的同步版本。

   只有当超时发生或者操作正常完成，本次调用才会返回。

   由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法

   如果超时发生，会返回操作结果为 \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。

   :param timeout: 最大扫描时间，通过时间常量设定。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 操作结果

