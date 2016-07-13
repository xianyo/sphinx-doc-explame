.. java:import:: java.util List

.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos OperationListener

.. java:import:: com.unionpay.cloudpos OperationResult

.. java:import:: com.unionpay.cloudpos TimeConstants

EMVDevice
=========

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public interface EMVDevice extends Device

   \ **EMVDevice**\ 定义了对EMV的操作方法。任何具体的实现都必须实现这个接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      EMVDevice eMVDevice =
              (EMVDevice) POSTerminal.getInstance().getDevice("cloudpos.device.emv");

   其中，"cloudpos.device.emv"是标识EMV的字符串，由具体的实现定义。

   **See also:** :java:ref:`Device`

Methods
-------
clearAIDParam
^^^^^^^^^^^^^

.. java:method::  void clearAIDParam() throws DeviceException
   :outertype: EMVDevice

   清除AID参数。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

clearCAPKParam
^^^^^^^^^^^^^^

.. java:method::  void clearCAPKParam() throws DeviceException
   :outertype: EMVDevice

   清除公钥参数。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

getAIDParam
^^^^^^^^^^^

.. java:method::  List<byte[]> getAIDParam() throws DeviceException
   :outertype: EMVDevice

   获取AID参数。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: AIDParam List。List中的每个byte[]是一条TLV格式的参数。

getCAPKParam
^^^^^^^^^^^^

.. java:method::  List<byte[]> getCAPKParam() throws DeviceException
   :outertype: EMVDevice

   获取公钥参数。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 公钥参数 List。List中的每个byte[]是一条TLV格式的参数。

getTLVList
^^^^^^^^^^

.. java:method::  byte[] getTLVList(List<Integer> tags) throws DeviceException
   :outertype: EMVDevice

   获取指定TAG列表数据。

   :param tags: tag列表。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: byte[] TLV串。

getTermConfig
^^^^^^^^^^^^^

.. java:method::  EMVTermConfig getTermConfig() throws DeviceException
   :outertype: EMVDevice

   获取终端设备参数。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: EMVTermConfig 终端配置。

parseAIDParam
^^^^^^^^^^^^^

.. java:method::  EMVAIDParam parseAIDParam(byte[] AIDParam) throws DeviceException
   :outertype: EMVDevice

   解析AID参数。

   传入TLV格式的AID参数，解析成EMVAIDParam.

   :param AIDParam:
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: EMVAIDParam

parseCAPKParam
^^^^^^^^^^^^^^

.. java:method::  EMVCAPKParam parseCAPKParam(byte[] CAPKParam) throws DeviceException
   :outertype: EMVDevice

   解析公钥参数。

   传入TLV格式的公钥参数，解析成EMVCAPKParam.

   :param CAPKParam:
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: EMVAIDParam。

process
^^^^^^^

.. java:method::  void process(EMVTransData transData, EMVTransListener listener) throws DeviceException
   :outertype: EMVDevice

   处理EMV流程。

   结束检卡会取消之前的异步读卡，并关闭读卡设备。

   :param transData: EMV交易数据。
   :param listener: EMV交易监听器，应用通过监听器得到需要的数据，处理确认之后，通过返回值，告诉EMVSDK实现进入下一步流程。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

queryECBalance
^^^^^^^^^^^^^^

.. java:method::  Balance queryECBalance(int channelType) throws DeviceException
   :outertype: EMVDevice

   查询电子现金余额流程。

   :param channelType: 0（\ :java:ref:`EMVConstants.Channel_Type_IC`\ ）：接触式；1（\ :java:ref:`EMVConstants.Channel_Type_RF`\ ）：非接触式。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: Balance 电子现金余额。

queryLogRecord
^^^^^^^^^^^^^^

.. java:method::  List<EMVCardLog> queryLogRecord(int channelType) throws DeviceException
   :outertype: EMVDevice

   查询卡片交易记录流程。

   :param channelType: 0（\ :java:ref:`EMVConstants.Channel_Type_IC`\ ）：接触式；1（\ :java:ref:`EMVConstants.Channel_Type_RF`\ ）：非接触式。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: List 卡片交易记录。

readCard
^^^^^^^^

.. java:method::  void readCard(int timeout, boolean icCard, boolean rfCard, OperationListener listener) throws DeviceException
   :outertype: EMVDevice

   检卡流程，在这个流程中打开指定的卡，并进入等卡逻辑。如果检测到卡，通过listener通知给应用。 本操作是个异步调用，调用后立即返回。 当用户插卡或者挥卡后，结果通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法返回。

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

   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :param icCard: 是否打开IC卡设备。
   :param rfCard: 是否打开非接卡设备。
   :param listener: 操作监听者。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

   **See also:** :java:ref:`OperationListener.handleResult`, :java:ref:`EMVCardReaderResult`

setAIDParam
^^^^^^^^^^^

.. java:method::  void setAIDParam(byte[] AIDParam) throws DeviceException
   :outertype: EMVDevice

   设置AID参数。这个参数必须TLV格式的一条参数。

   :param AIDParam:
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

setCAPKParam
^^^^^^^^^^^^

.. java:method::  void setCAPKParam(byte[] CAPKParam) throws DeviceException
   :outertype: EMVDevice

   设置公钥参数。这个参数必须TLV格式的一条参数。

   :param CAPKParam: 公钥参数。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

setTLV
^^^^^^

.. java:method::  void setTLV(int tag, byte[] value) throws DeviceException
   :outertype: EMVDevice

   设置TAG值。

   :param tag:
   :param value:
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

setTermConfig
^^^^^^^^^^^^^

.. java:method::  void setTermConfig(EMVTermConfig config) throws DeviceException
   :outertype: EMVDevice

   配置终端设备参数。

   :param config: 终端配置。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 是否设置成功。

stopReadCard
^^^^^^^^^^^^

.. java:method::  void stopReadCard() throws DeviceException
   :outertype: EMVDevice

   结束检卡。

   结束检卡会取消之前的异步读卡，并关闭读卡设备。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

