.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos OperationListener

.. java:import:: com.unionpay.cloudpos OperationResult

.. java:import:: com.unionpay.cloudpos TimeConstants

IDCardReaderDevice
==================

.. java:package:: com.unionpay.cloudpos.idcardreader
   :noindex:

.. java:type:: public interface IDCardReaderDevice extends Device

   \ **IDCardReaderDevice**\ 定义了所有身份证读取身份证的接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      IDCardReaderDevice idCardReaderDevice =
              (IDCardReaderDevice) POSTerminal.getInstance().getDevice("cloudpos.device.idcardreader");

   其中，"cloudpos.device.idcard"是标识身份证设备的字符串，由具体的实现定义。

   身份读取设备对象主要进行身份证卡读取操作。其中等卡都包括同步和异步两种方式。同步方式会将主线程锁定，直到有结果返回，超时或者被取消。 异步方式不会锁定主线程，当有结果时，会回调监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法。

   为了正常访问身份证读取设备，请在Android Manifest文件中设置身份证读取设备访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_IDCard"/>

   **See also:** :java:ref:`Device`

Methods
-------
listenForCardPresent
^^^^^^^^^^^^^^^^^^^^

.. java:method::  void listenForCardPresent(OperationListener listener, int timeout) throws DeviceException
   :outertype: IDCardReaderDevice

   启动一次扫描身份证的过程。 一次只能查找一张身份证。

   本方法会正确响应 \ :java:ref:`cancelRequest()`\ 方法来取消操作。

   本操作是个异步调用。当找到身份证后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法 返回。 通常程序必须定义自己的OperationListener，在回调函数handleResult()中对返回结果进行处理。如下所示：

   .. parsed-literal::

      OperationListener operationListener = new OperationListener(){
          @Override
          public void handleResult(OperationResult result) {
              // handleResult
          }
      });

   方法通过设置timeout来决定最多等待多长时间。请求开始执行的时候timeout开始计时。

   如果timeout时间到了，但还没有扫描到卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回

   如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待卡，直到扫描到卡或取消。

   如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。

   :param listener: 操作监听者。
   :param timeout: 最大扫描时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

open
^^^^

.. java:method::  void open(int logicalID) throws DeviceException
   :outertype: IDCardReaderDevice

   打开某个逻辑ID的身份证读取设备。

   :param logicalID: 模块的逻辑ID
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

waitForCardPresent
^^^^^^^^^^^^^^^^^^

.. java:method::  IDCardReaderOperationResult waitForCardPresent(int timeout) throws DeviceException
   :outertype: IDCardReaderDevice

   本方法是上述对应的 \ :java:ref:`listenForCardPresent(OperationListener,int)`\ 方法的同步版本。

   只有当超时发生或者操作正常完成，本次调用才会返回。

   由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法。

   如果超时发生，会返回这个操作结果： \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。

   :param timeout: 最大扫描时间，通过时间常量设定。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 操作结果

