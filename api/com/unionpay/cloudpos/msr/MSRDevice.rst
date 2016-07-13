.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos OperationListener

.. java:import:: com.unionpay.cloudpos OperationResult

.. java:import:: com.unionpay.cloudpos TimeConstants

MSRDevice
=========

.. java:package:: com.unionpay.cloudpos.msr
   :noindex:

.. java:type:: public interface MSRDevice extends Device, TimeConstants

   \ **MSRDevice**\ 定义了对磁条卡阅读器的操作方法。任何具体的实现都必须实现这个接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      MSRDevice msrDevice =
              (MSRDevice) POSTerminal.getInstance().getDevice("cloudpos.device.msr");

   其中，"cloudpos.device.msr"是标识磁条卡阅读器的字符串，由具体的实现定义。

   磁条卡阅读器设备对象主要进行刷卡操作。其中等待刷卡包括同步和异步两种方式。同步方式会将主线程锁定，直到有结果返回，超时或者被取消。 异步方式不会锁定主线程，当有结果时，会回调监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法。

   为了正常访问磁条卡阅读器，请在Android Manifest文件中设置磁条卡阅读器访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_MSR"/>

Methods
-------
listenForSwipe
^^^^^^^^^^^^^^

.. java:method::  void listenForSwipe(OperationListener listener, int timeout) throws DeviceException
   :outertype: MSRDevice

   等待用户刷卡。

   本操作是个异步调用，调用后立即返回。当用户刷卡发生后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法返回。

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

   如果timeout时间到了，但用户还没有刷卡，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回

   如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待刷卡，直到刷卡或取消。

   如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。

   :param listener: 操作监听者。
   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

   **See also:** :java:ref:`OperationListener.handleResult`, :java:ref:`MSROperationResult`, :java:ref:`MSRTrackData`

open
^^^^

.. java:method::  void open(int logicalID) throws DeviceException
   :outertype: MSRDevice

   打开磁条卡阅读器的指定卡槽 。

   打开成功，设备对象就和相应的磁条卡阅读器的卡槽建立了连接。此后可以进行后面的各项操作。

   设备对象去打开某个已经打开（被当前设备对象或其他设备对象）的磁条卡阅读器的卡槽会抛出异常\ :java:ref:`BAD_CONTROL_MODE <DeviceException.BAD_CONTROL_MODE>`\ 。

   设备对象打开磁条卡阅读器的某个卡槽，再打开该磁条卡阅读器的另外一个卡槽，会抛出异常\ :java:ref:`BAD_CONTROL_MODE <DeviceException.BAD_CONTROL_MODE>`\ 。

   :param logicalID: 读卡器逻辑ID（卡槽ID），
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

waitForSwipe
^^^^^^^^^^^^

.. java:method::  MSROperationResult waitForSwipe(int timeout) throws DeviceException
   :outertype: MSRDevice

   本方法是上述对应的 \ :java:ref:`listenForSwipe(OperationListener,int)`\ 方法的同步版本。

   只有当超时发生或者操作正常完成，本次调用才会返回。

   由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法。

   如果超时发生，会返回这个操作结果：信息为 \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何卡片返回。

   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 操作结果。

