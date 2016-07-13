.. java:import:: java.util Map

EMVTransData
============

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public class EMVTransData

Methods
-------
getAmount
^^^^^^^^^

.. java:method:: public long getAmount()
   :outertype: EMVTransData

   获取交易金额。

   :return: 交易金额 。

getChannelType
^^^^^^^^^^^^^^

.. java:method:: public int getChannelType()
   :outertype: EMVTransData

   获取通道类型。

   :return: 通道类型 。

getExtField
^^^^^^^^^^^

.. java:method:: public Map<String, Object> getExtField()
   :outertype: EMVTransData

   获取扩展域。

   :return: 扩展域 。

getFlow
^^^^^^^

.. java:method:: public int getFlow()
   :outertype: EMVTransData

   获取流程类型。

   :return: 流程类型。

getOtherAmount
^^^^^^^^^^^^^^

.. java:method:: public long getOtherAmount()
   :outertype: EMVTransData

   获取其他金额。

   :return: 其他金额 。

getTraceNo
^^^^^^^^^^

.. java:method:: public String getTraceNo()
   :outertype: EMVTransData

   获取交易序号。

   :return: 交易序号 。

getTransDate
^^^^^^^^^^^^

.. java:method:: public String getTransDate()
   :outertype: EMVTransData

   获取交易日期，YYYYMMDD。

   :return: 交易日期 。

getTransTime
^^^^^^^^^^^^

.. java:method:: public String getTransTime()
   :outertype: EMVTransData

   获取交易时间，HHMMSS。

   :return: 交易时间，HHMMSS 。

getTransType
^^^^^^^^^^^^

.. java:method:: public byte getTransType()
   :outertype: EMVTransData

   获取交易类型。

   :return: 交易类型 。

isCardAuth
^^^^^^^^^^

.. java:method:: public boolean isCardAuth()
   :outertype: EMVTransData

   获取是否执行脱机数据认证。

   :return: 是否执行脱机数据认证 。

isForceOnline
^^^^^^^^^^^^^

.. java:method:: public boolean isForceOnline()
   :outertype: EMVTransData

   获取是否强制联机。

   :return: 是否强制联机 。

isSupportCVM
^^^^^^^^^^^^

.. java:method:: public boolean isSupportCVM()
   :outertype: EMVTransData

   获取是否执行CVM。

   :return: 是否执行CVM 。

isSupportEC
^^^^^^^^^^^

.. java:method:: public boolean isSupportEC()
   :outertype: EMVTransData

   获取是否电子现金交易。

   :return: 是否电子现金交易 。

isSupportSM
^^^^^^^^^^^

.. java:method:: public boolean isSupportSM()
   :outertype: EMVTransData

   获取是否支持国密。

   :return: 是否支持国密 。

setAmount
^^^^^^^^^

.. java:method:: public void setAmount(long amount)
   :outertype: EMVTransData

   设置交易金额。

   :param amount: 交易金额。

setCardAuth
^^^^^^^^^^^

.. java:method:: public void setCardAuth(boolean isCardAuth)
   :outertype: EMVTransData

   设置是否执行脱机数据认证。

   :param isCardAuth: 是否执行脱机数据认证。

setChannelType
^^^^^^^^^^^^^^

.. java:method:: public void setChannelType(int channelType)
   :outertype: EMVTransData

   设置通道类型。

   :param channelType: 通道类型，0：接触式 ；1：非接触式。

setExtField
^^^^^^^^^^^

.. java:method:: public void setExtField(Map<String, Object> extField)
   :outertype: EMVTransData

   设置扩展域。

   :param extField: 扩展域。

setFlow
^^^^^^^

.. java:method:: public void setFlow(int flow)
   :outertype: EMVTransData

   设置流程类型。

   :param flow: 流程类型，0x01：标准的授权过程；0x02：简易流程；0x03：qPBOC流程。

setForceOnline
^^^^^^^^^^^^^^

.. java:method:: public void setForceOnline(boolean isForceOnline)
   :outertype: EMVTransData

   设置是否强制联机。

   :param isForceOnline: 是否强制联机。

setOtherAmount
^^^^^^^^^^^^^^

.. java:method:: public void setOtherAmount(long otherAmount)
   :outertype: EMVTransData

   设置其他金额。

   :param otherAmount: 其他金额。

setSupportCVM
^^^^^^^^^^^^^

.. java:method:: public void setSupportCVM(boolean isSupportCVM)
   :outertype: EMVTransData

   设置是否执行CVM。

   :param isSupportCVM: 是否执行CVM。

setSupportEC
^^^^^^^^^^^^

.. java:method:: public void setSupportEC(boolean isSupportEC)
   :outertype: EMVTransData

   设置是否电子现金交易。

   :param isSupportEC: 是否电子现金交易。

setSupportSM
^^^^^^^^^^^^

.. java:method:: public void setSupportSM(boolean isSupportSM)
   :outertype: EMVTransData

   设置是否支持国密。

   :param isSupportSM: 是否支持国密。

setTraceNo
^^^^^^^^^^

.. java:method:: public void setTraceNo(String traceNo)
   :outertype: EMVTransData

   设置交易序号。

   :param traceNo: 交易序号。

setTransDate
^^^^^^^^^^^^

.. java:method:: public void setTransDate(String transDate)
   :outertype: EMVTransData

   设置交易日期，YYYYMMDD。

   :param transDate: 交易日期，YYYYMMDD

setTransTime
^^^^^^^^^^^^

.. java:method:: public void setTransTime(String transTime)
   :outertype: EMVTransData

   设置交易时间，HHMMSS。

   :param transTime: 交易时间，HHMMSS。

setTransType
^^^^^^^^^^^^

.. java:method:: public void setTransType(byte transType)
   :outertype: EMVTransData

   设置交易类型。

   :param transType: 交易类型。

