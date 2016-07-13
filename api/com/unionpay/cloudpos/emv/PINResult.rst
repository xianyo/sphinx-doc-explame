PINResult
=========

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public class PINResult

Methods
-------
getPindata
^^^^^^^^^^

.. java:method:: public byte[] getPindata()
   :outertype: PINResult

   获取脱机密码。

   :return: 脱机密码 。

getResultCode
^^^^^^^^^^^^^

.. java:method:: public int getResultCode()
   :outertype: PINResult

   获取输入密码结果值。

   :return: 输入密码结果值 。

setPindata
^^^^^^^^^^

.. java:method:: public void setPindata(byte[] pindata)
   :outertype: PINResult

   设置脱机密码。

   :param pindata: 脱机密码。

setResultCode
^^^^^^^^^^^^^

.. java:method:: public void setResultCode(int resultCode)
   :outertype: PINResult

   设置输入密码结果值。

   :param resultCode: 输入密码结果值 , 0（\ :java:ref:`EMVConstants.PIN_Input_Success`\ ）:输入成功；1（\ :java:ref:`EMVConstants.PIN_Input_Bypass`\ ）：bypass； -1（\ :java:ref:`EMVConstants.PIN_Input_Cancel`\ ）：取消；-2（\ :java:ref:`EMVConstants.PIN_Input_Failure`\ ）：失败； -3（\ :java:ref:`EMVConstants.PIN_Input_Timeout`\ ）：超时.

