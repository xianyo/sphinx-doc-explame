.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos OperationListener

.. java:import:: com.unionpay.cloudpos OperationResult

.. java:import:: com.unionpay.cloudpos TimeConstants

SmartCardReaderDevice
=====================

.. java:package:: com.unionpay.cloudpos.smartcardreader
   :noindex:

.. java:type:: public interface SmartCardReaderDevice extends Device, TimeConstants

   \ **SmartCardReaderDevice**\ 定义了接触式IC卡阅读器的使用接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      SmartCardReaderDevice martCardReaderDevice =
              (SmartCardReaderDevice) POSTerminal.getInstance().getDevice("cloudpos.device.smartcardreader");

   其中，"cloudpos.device.smartcard"是标识接触式IC卡阅读器的字符串，由具体的实现定义。

   接触式IC卡阅读器设备对象主要进行SmartCard读卡操作。其中等卡及移卡都包括同步和异步两种方式。同步方式会将主线程锁定，直到有结果返回，超时或者被取消。 异步方式不会锁定主线程，当有结果时，会回调监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法。

   为了正常访问接触式IC卡阅读器设备，请在Android Manifest文件中设置接触式IC卡阅读器设备的访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_SMARTCARD"/>

   **See also:** :java:ref:`Device`

Methods
-------
listenForCardAbsent
^^^^^^^^^^^^^^^^^^^

.. java:method::  void listenForCardAbsent(OperationListener listener, int timeout) throws DeviceException
   :outertype: SmartCardReaderDevice

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

   如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待，直到移除卡或取消。

   如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。

   :param listener: 操作监听者。
   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

listenForCardPresent
^^^^^^^^^^^^^^^^^^^^

.. java:method::  void listenForCardPresent(OperationListener listener, int timeout) throws DeviceException
   :outertype: SmartCardReaderDevice

   监听插卡动作。

   本操作是个异步调用。当用户插卡发生后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法 返回。

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

   如果timeout时间到了，但用户还没有插卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回

   如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待插卡，直到插卡或取消。

   如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。

   :param listener: 操作监听者。
   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

   **See also:** :java:ref:`OperationListener.handleResult`

open
^^^^

.. java:method::  void open(int logicalID) throws DeviceException
   :outertype: SmartCardReaderDevice

   打开某个逻辑ID的IC卡读卡槽。每个终端可能有多个IC卡卡槽，在打开时，要指定logicalID. logicalID的范围从0到设备支持的最大卡槽数-1

   :param logicalID: 打开IC卡读卡器的设备编号，0对应底部的插槽，1、2、3对应终端背面的PSAM卡槽
   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义

waitForCardAbsent
^^^^^^^^^^^^^^^^^

.. java:method::  SmartCardReaderOperationResult waitForCardAbsent(int timeout) throws DeviceException
   :outertype: SmartCardReaderDevice

   本方法是上述对应的 \ :java:ref:`listenForCardAbsent(OperationListener,int)`\ 方法的同步版本。

   只有当超时发生或者操作正常完成，本次调用才会返回。

   由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法。

   如果超时发生，会返回操作结果为 \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。

   :param timeout: 最大等待时间，通过时间常量设定。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 操作结果

waitForCardPresent
^^^^^^^^^^^^^^^^^^

.. java:method::  SmartCardReaderOperationResult waitForCardPresent(int timeout) throws DeviceException
   :outertype: SmartCardReaderDevice

   本方法是上述对应的 \ :java:ref:`listenForCardPresent(OperationListener,int)`\ 方法的同步版本。

   只有当超时发生或者操作正常完成，本次调用才会返回。

   由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法。

   如果超时发生，会返回这个操作结果：信息为 \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。

   :param timeout: 最大等待时间，通过时间常量设定。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 操作结果

