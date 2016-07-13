.. java:import:: com.unionpay.cloudpos OperationResult

EMVCardReaderResult
===================

.. java:package:: com.unionpay.cloudpos.emv
   :noindex:

.. java:type:: public interface EMVCardReaderResult extends OperationResult

   \ ``EMVCardReaderResult``\ 是被设备产生，用来返回检卡操作结果。

   \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult <OperationResult>`\ 的对应方法。

   通过\ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 返回成功或失败，返回值参见\ ``OperationResult``\ 中定义。 通过\ :java:ref:`getChannelType()`\ 返回卡类型。

Methods
-------
getChannelType
^^^^^^^^^^^^^^

.. java:method:: public int getChannelType()
   :outertype: EMVCardReaderResult

   获取卡类型。

   :return: 卡类型 0（\ :java:ref:`EMVConstants.Channel_Type_IC`\ ）：接触式；1（\ :java:ref:`EMVConstants.Channel_Type_RF`\ ）：非接触式；-1：失败。

