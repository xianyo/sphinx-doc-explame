OnlineResult
============

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public class OnlineResult

Methods
-------
getField39
^^^^^^^^^^

.. java:method:: public byte[] getField39()
   :outertype: OnlineResult

   获取39域内容。

   :return: 39域内容 。

getField55
^^^^^^^^^^

.. java:method:: public byte[] getField55()
   :outertype: OnlineResult

   获取55域内容。

   :return: 55域内容 。

getResultCode
^^^^^^^^^^^^^

.. java:method:: public int getResultCode()
   :outertype: OnlineResult

   获取联机交易结果值。

   :return: 联机交易结果值 。

setField39
^^^^^^^^^^

.. java:method:: public void setField39(byte[] field39)
   :outertype: OnlineResult

   设置39域内容。

   :param field39: 39域内容。

setField55
^^^^^^^^^^

.. java:method:: public void setField55(byte[] field55)
   :outertype: OnlineResult

   设置55域内容。

   :param field55: 55域内容。

setResultCode
^^^^^^^^^^^^^

.. java:method:: public void setResultCode(int resultCode)
   :outertype: OnlineResult

   设置联机交易结果值。

   :param resultCode: 联机交易结果值 , 0（\ :java:ref:`EMVConstants.App_Confirm_OK`\ ）:成功；-1（\ :java:ref:`EMVConstants.App_Confirm_Cancel`\ ）：取消； -2（\ :java:ref:`EMVConstants.App_Confirm_Failure`\ ）：失败。

