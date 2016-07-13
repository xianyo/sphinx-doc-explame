.. java:import:: java.util Map

EMVCAPKParam
============

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public class EMVCAPKParam

Methods
-------
getArithInd
^^^^^^^^^^^

.. java:method:: public int getArithInd()
   :outertype: EMVCAPKParam

   获取RSA算法标志。

   :return: RSA算法标志 。

getCheckSum
^^^^^^^^^^^

.. java:method:: public String getCheckSum()
   :outertype: EMVCAPKParam

   获取密钥校验和。

   :return: 密钥校验和 。

getExpDate
^^^^^^^^^^

.. java:method:: public String getExpDate()
   :outertype: EMVCAPKParam

   获取有效期。

   :return: 有效期。

getExponent
^^^^^^^^^^^

.. java:method:: public String getExponent()
   :outertype: EMVCAPKParam

   获取指数。

   :return: 指数。

getExtField
^^^^^^^^^^^

.. java:method:: public Map<String, Object> getExtField()
   :outertype: EMVCAPKParam

   获取扩展域。

   :return: 扩展域 。

getHashInd
^^^^^^^^^^

.. java:method:: public int getHashInd()
   :outertype: EMVCAPKParam

   获取HASH算法标志。

   :return: HASH算法标志 。

getKeyID
^^^^^^^^

.. java:method:: public int getKeyID()
   :outertype: EMVCAPKParam

   获取密钥索引。

   :return: 密钥索引 。

getModul
^^^^^^^^

.. java:method:: public String getModul()
   :outertype: EMVCAPKParam

   获取模。

   :return: 模 。

getRID
^^^^^^

.. java:method:: public String getRID()
   :outertype: EMVCAPKParam

   获取应用注册服务ID。

   :return: 应用注册服务ID 。

setArithInd
^^^^^^^^^^^

.. java:method:: public void setArithInd(int arithInd)
   :outertype: EMVCAPKParam

   设置RSA算法标志。

   :param arithInd: RSA算法标志。

setCheckSum
^^^^^^^^^^^

.. java:method:: public void setCheckSum(String checkSum)
   :outertype: EMVCAPKParam

   设置密钥校验和。

   :param checkSum: 密钥校验和。

setExpDate
^^^^^^^^^^

.. java:method:: public void setExpDate(String expDate)
   :outertype: EMVCAPKParam

   设置有效期。

   :param expDate: 有效期。

setExponent
^^^^^^^^^^^

.. java:method:: public void setExponent(String exponent)
   :outertype: EMVCAPKParam

   设置指数。

   :param exponent: 指数。

setExtField
^^^^^^^^^^^

.. java:method:: public void setExtField(Map<String, Object> extField)
   :outertype: EMVCAPKParam

   设置扩展域。

   :param extField: 扩展域。

setHashInd
^^^^^^^^^^

.. java:method:: public void setHashInd(int hashInd)
   :outertype: EMVCAPKParam

   设置HASH算法标志。

   :param hashInd: HASH算法标志。

setKeyID
^^^^^^^^

.. java:method:: public void setKeyID(int keyID)
   :outertype: EMVCAPKParam

   设置密钥索引。

   :param keyID: 密钥索引。

setModul
^^^^^^^^

.. java:method:: public void setModul(String modul)
   :outertype: EMVCAPKParam

   设置模。

   :param modul: 模。

setRID
^^^^^^

.. java:method:: public void setRID(String rID)
   :outertype: EMVCAPKParam

   设置应用注册服务ID。

   :param rID: 应用注册服务ID。

