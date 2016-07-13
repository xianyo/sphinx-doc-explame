.. java:import:: java.util Map

.. java:import:: com.unionpay.cloudpos OperationResult

EMVTermConfig
=============

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public class EMVTermConfig

Methods
-------
getCapability
^^^^^^^^^^^^^

.. java:method:: public String getCapability()
   :outertype: EMVTermConfig

   获取终端性能。

   :return: 终端性能 。

getCountryCode
^^^^^^^^^^^^^^

.. java:method:: public String getCountryCode()
   :outertype: EMVTermConfig

   获取国家代码。

   :return: 国家代码 。

getExtCapability
^^^^^^^^^^^^^^^^

.. java:method:: public String getExtCapability()
   :outertype: EMVTermConfig

   获取附加终端性能。

   :return: 附加终端性能 。

getExtField
^^^^^^^^^^^

.. java:method:: public Map<String, Object> getExtField()
   :outertype: EMVTermConfig

   获取扩展域。

   :return: 扩展域 。

getMerchCateCode
^^^^^^^^^^^^^^^^

.. java:method:: public String getMerchCateCode()
   :outertype: EMVTermConfig

   获取商户类别码。

   :return: 商户类别码 。

getMerchId
^^^^^^^^^^

.. java:method:: public String getMerchId()
   :outertype: EMVTermConfig

   获取商户标志（商户号）。

   :return: 商户标志（商户号） 。

getMerchName
^^^^^^^^^^^^

.. java:method:: public String getMerchName()
   :outertype: EMVTermConfig

   获取商户名。

   :return: 商户名 。

getReferCurrCode
^^^^^^^^^^^^^^^^

.. java:method:: public String getReferCurrCode()
   :outertype: EMVTermConfig

   获取参考货币代码。

   :return: 参考货币代码。

getReferCurrCon
^^^^^^^^^^^^^^^

.. java:method:: public long getReferCurrCon()
   :outertype: EMVTermConfig

   获取参考货币代码和交易代码的转换系数。

   :return: 参考货币代码和交易代码的转换系数 。

getReferCurrExp
^^^^^^^^^^^^^^^

.. java:method:: public int getReferCurrExp()
   :outertype: EMVTermConfig

   获取参考货币指数。

   :return: 参考货币指数。

getTermId
^^^^^^^^^

.. java:method:: public String getTermId()
   :outertype: EMVTermConfig

   获取终端标志（POS号）。

   :return: 终端标志（POS号） 。

getTermType
^^^^^^^^^^^

.. java:method:: public int getTermType()
   :outertype: EMVTermConfig

   获取终端类型。

   :return: 终端类型 。

getTransCurrCode
^^^^^^^^^^^^^^^^

.. java:method:: public String getTransCurrCode()
   :outertype: EMVTermConfig

   获取交易货币代码。

   :return: 交易货币代码。

getTransCurrExp
^^^^^^^^^^^^^^^

.. java:method:: public int getTransCurrExp()
   :outertype: EMVTermConfig

   获取交易货币代码指数。

   :return: 交易货币代码指数 。

setCapability
^^^^^^^^^^^^^

.. java:method:: public void setCapability(String capability)
   :outertype: EMVTermConfig

   设置终端性能（参考PBOC规范）。

   :param capability: 终端性能。

setCountryCode
^^^^^^^^^^^^^^

.. java:method:: public void setCountryCode(String countryCode)
   :outertype: EMVTermConfig

   设置国家代码。

   :param countryCode: 国家代码。

setExtCapability
^^^^^^^^^^^^^^^^

.. java:method:: public void setExtCapability(String extCapability)
   :outertype: EMVTermConfig

   设置附加终端性能（参考PBOC规范）。

   :param extCapability: 附加终端性能。

setExtField
^^^^^^^^^^^

.. java:method:: public void setExtField(Map<String, Object> extField)
   :outertype: EMVTermConfig

   设置扩展域。

   :param extField: 扩展域。

setMerchCateCode
^^^^^^^^^^^^^^^^

.. java:method:: public void setMerchCateCode(String merchCateCode)
   :outertype: EMVTermConfig

   设置商户类别码。

   :param merchCateCode: 商户类别码。

setMerchId
^^^^^^^^^^

.. java:method:: public void setMerchId(String merchId)
   :outertype: EMVTermConfig

   设置商户标志（商户号）。

   :param merchId: 商户标志（商户号）。

setMerchName
^^^^^^^^^^^^

.. java:method:: public void setMerchName(String merchName)
   :outertype: EMVTermConfig

   设置商户名。

   :param merchName: 商户名。

setReferCurrCode
^^^^^^^^^^^^^^^^

.. java:method:: public void setReferCurrCode(String referCurrCode)
   :outertype: EMVTermConfig

   设置参考货币代码。

   :param referCurrCode: 参考货币代码。

setReferCurrCon
^^^^^^^^^^^^^^^

.. java:method:: public void setReferCurrCon(long referCurrCon)
   :outertype: EMVTermConfig

   设置参考货币代码和交易代码的转换系数。

   :param referCurrCon: 参考货币代码和交易代码的转换系数。

setReferCurrExp
^^^^^^^^^^^^^^^

.. java:method:: public void setReferCurrExp(int referCurrExp)
   :outertype: EMVTermConfig

   设置参考货币指数。

   :param referCurrExp: 参考货币指数。

setTermId
^^^^^^^^^

.. java:method:: public void setTermId(String termId)
   :outertype: EMVTermConfig

   设置终端标志（POS号）。

   :param termId: 终端标志（POS号）。

setTermType
^^^^^^^^^^^

.. java:method:: public void setTermType(int termType)
   :outertype: EMVTermConfig

   设置终端类型（参考PBOC规范）。

   :param termType: 终端类型。

setTransCurrCode
^^^^^^^^^^^^^^^^

.. java:method:: public void setTransCurrCode(String transCurrCode)
   :outertype: EMVTermConfig

   设置交易货币代码。

   :param transCurrCode: 交易货币代码，若为人民币账户，\ :java:ref:`EMVConstants.Currency_Code_RMB`\ ； 若为积分账户，\ :java:ref:`EMVConstants.Currency_Code_JIFEN`\ ；若为其他币种，根据ISO货币代码填写。

setTransCurrExp
^^^^^^^^^^^^^^^

.. java:method:: public void setTransCurrExp(int transCurrExp)
   :outertype: EMVTermConfig

   设置交易货币代码指数。

   :param transCurrExp: 交易货币代码指数。

