EMVCardLog
==========

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public class EMVCardLog

Methods
-------
getATC
^^^^^^

.. java:method:: public String getATC()
   :outertype: EMVCardLog

   获取交易计数器（9F36）。

   :return: 交易计数器（9F36）。

getAmount
^^^^^^^^^

.. java:method:: public long getAmount()
   :outertype: EMVCardLog

   获取交易金额。

   :return: 交易金额。

getCountryCode
^^^^^^^^^^^^^^

.. java:method:: public String getCountryCode()
   :outertype: EMVCardLog

   获取国家代码（9F1A）。

   :return: 国家代码（9F1A） 。

getCurrencyCode
^^^^^^^^^^^^^^^

.. java:method:: public String getCurrencyCode()
   :outertype: EMVCardLog

   获取货币代码（5F2A）。

   :return: 货币代码（5F2A） 。

getMerchName
^^^^^^^^^^^^

.. java:method:: public String getMerchName()
   :outertype: EMVCardLog

   获取商户名称（9F4E）。

   :return: 商户名称（9F4E） 。

getOtherAmount
^^^^^^^^^^^^^^

.. java:method:: public long getOtherAmount()
   :outertype: EMVCardLog

   获取其它金额。

   :return: 其它金额。

getOtherTLVLog
^^^^^^^^^^^^^^

.. java:method:: public String getOtherTLVLog()
   :outertype: EMVCardLog

   获取本结构中未定义的其它数据元按照TLV 列表的格式保存在TLV中。

   :return: 本结构中未定义的其它数据元按照TLV 列表的格式保存在TLV中 。

getTransDate
^^^^^^^^^^^^

.. java:method:: public String getTransDate()
   :outertype: EMVCardLog

   获取交易日期。

   :return: 交易日期。

getTransTime
^^^^^^^^^^^^

.. java:method:: public String getTransTime()
   :outertype: EMVCardLog

   获取交易时间。

   :return: 交易时间 。

getTransType
^^^^^^^^^^^^

.. java:method:: public byte getTransType()
   :outertype: EMVCardLog

   获取交易类型（9C）。

   :return: 交易类型（9C） 。

isATCExist
^^^^^^^^^^

.. java:method:: public boolean isATCExist()
   :outertype: EMVCardLog

   获取交易计数器存在标识。

   :return: 交易计数器存在标识 。

isAmountExist
^^^^^^^^^^^^^

.. java:method:: public boolean isAmountExist()
   :outertype: EMVCardLog

   获取交易金额存在标识。

   :return: 交易金额存在标识 。

isCountryCodeExist
^^^^^^^^^^^^^^^^^^

.. java:method:: public boolean isCountryCodeExist()
   :outertype: EMVCardLog

   获取国家代码存在标识。

   :return: 国家代码存在标识 。

isCurrencyExist
^^^^^^^^^^^^^^^

.. java:method:: public boolean isCurrencyExist()
   :outertype: EMVCardLog

   获取货币代码存在标识。

   :return: 货币代码存在标识 。

isDateExist
^^^^^^^^^^^

.. java:method:: public boolean isDateExist()
   :outertype: EMVCardLog

   获取交易日期（YYMMDD）存在标识。

   :return: 获取交易日期（YYMMDD）存在标识 。

isMerchNameExist
^^^^^^^^^^^^^^^^

.. java:method:: public boolean isMerchNameExist()
   :outertype: EMVCardLog

   获取商户名称存在标识。

   :return: 商户名称存在标识 。

isOtherAmountExist
^^^^^^^^^^^^^^^^^^

.. java:method:: public boolean isOtherAmountExist()
   :outertype: EMVCardLog

   获取其它金额存在标识。

   :return: 其它金额存在标识 。

isTimeExist
^^^^^^^^^^^

.. java:method:: public boolean isTimeExist()
   :outertype: EMVCardLog

   获取交易时间存在标识。

   :return: 交易时间存在标识 。

isTransTypeExist
^^^^^^^^^^^^^^^^

.. java:method:: public boolean isTransTypeExist()
   :outertype: EMVCardLog

   获取交易类型存在标识。

   :return: 交易类型存在标识。

setATC
^^^^^^

.. java:method:: public void setATC(String aTC)
   :outertype: EMVCardLog

   设置交易计数器（9F36）。

   :param aTC: 交易计数器（9F36）。

setATCExist
^^^^^^^^^^^

.. java:method:: public void setATCExist(boolean isATCExist)
   :outertype: EMVCardLog

   设置交易计数器存在标识。

   :param isATCExist: 交易计数器存在标识。

setAmount
^^^^^^^^^

.. java:method:: public void setAmount(long amount)
   :outertype: EMVCardLog

   设置交易金额。

   :param amount: 交易金额。

setAmountExist
^^^^^^^^^^^^^^

.. java:method:: public void setAmountExist(boolean isAmountExist)
   :outertype: EMVCardLog

   设置交易金额存在标识。

   :param isAmountExist: 交易金额存在标识。

setCountryCode
^^^^^^^^^^^^^^

.. java:method:: public void setCountryCode(String countryCode)
   :outertype: EMVCardLog

   设置国家代码（9F1A）。

   :param countryCode: 国家代码（9F1A）。

setCountryCodeExist
^^^^^^^^^^^^^^^^^^^

.. java:method:: public void setCountryCodeExist(boolean isCountryCodeExist)
   :outertype: EMVCardLog

   设置国家代码存在标识。

   :param isCountryCodeExist: 国家代码存在标识。

setCurrencyCode
^^^^^^^^^^^^^^^

.. java:method:: public void setCurrencyCode(String currencyCode)
   :outertype: EMVCardLog

   设置货币代码（5F2A）。

   :param currencyCode: 货币代码（5F2A）。

setCurrencyExist
^^^^^^^^^^^^^^^^

.. java:method:: public void setCurrencyExist(boolean isCurrencyExist)
   :outertype: EMVCardLog

   设置货币代码存在标识。

   :param isCurrencyExist: 货币代码存在标识。

setDateExist
^^^^^^^^^^^^

.. java:method:: public void setDateExist(boolean isDateExist)
   :outertype: EMVCardLog

   设置获取交易日期（YYMMDD）存在标识。

   :param isDateExist: 获取交易日期（YYMMDD）存在标识。

setMerchName
^^^^^^^^^^^^

.. java:method:: public void setMerchName(String merchName)
   :outertype: EMVCardLog

   设置商户名称（9F4E）。

   :param merchName: 商户名称（9F4E）。

setMerchNameExist
^^^^^^^^^^^^^^^^^

.. java:method:: public void setMerchNameExist(boolean isMerchNameExist)
   :outertype: EMVCardLog

   设置商户名称存在标识。

   :param isMerchNameExist: 商户名称存在标识。

setOtherAmount
^^^^^^^^^^^^^^

.. java:method:: public void setOtherAmount(long otherAmount)
   :outertype: EMVCardLog

   设置其它金额。

   :param otherAmount: 其它金额。

setOtherAmountExist
^^^^^^^^^^^^^^^^^^^

.. java:method:: public void setOtherAmountExist(boolean isOtherAmountExist)
   :outertype: EMVCardLog

   设置其它金额存在标识。

   :param isOtherAmountExist: 其它金额存在标识。

setOtherTLVLog
^^^^^^^^^^^^^^

.. java:method:: public void setOtherTLVLog(String otherTLVLog)
   :outertype: EMVCardLog

   设置本结构中未定义的其它数据元按照TLV 列表的格式保存在TLV中。

   :param otherTLVLog: 本结构中未定义的其它数据元按照TLV 列表的格式保存在TLV中

setTimeExist
^^^^^^^^^^^^

.. java:method:: public void setTimeExist(boolean isTimeExist)
   :outertype: EMVCardLog

   设置交易时间存在标识。

   :param isTimeExist: 交易时间存在标识。

setTransDate
^^^^^^^^^^^^

.. java:method:: public void setTransDate(String transDate)
   :outertype: EMVCardLog

   设置交易日期。

   :param transDate: 交易日期。

setTransTime
^^^^^^^^^^^^

.. java:method:: public void setTransTime(String transTime)
   :outertype: EMVCardLog

   设置交易时间。

   :param transTime: 交易时间。

setTransType
^^^^^^^^^^^^

.. java:method:: public void setTransType(byte transType)
   :outertype: EMVCardLog

   设置交易类型（9C）。

   :param transType: 交易类型（9C）。

setTransTypeExist
^^^^^^^^^^^^^^^^^

.. java:method:: public void setTransTypeExist(boolean isTransTypeExist)
   :outertype: EMVCardLog

   设置交易类型存在标识。

   :param isTransTypeExist: 交易类型存在标识。

