.. java:import:: com.unionpay.cloudpos OperationResult

IDCardReaderOperationResult
===========================

.. java:package:: com.unionpay.cloudpos.idcardreader
   :noindex:

.. java:type:: public interface IDCardReaderOperationResult extends OperationResult

   \ ``IDCardReaderOperationResult``\ 是被设备产生，用来返回身份证读取设备的操作结果。

   \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult <OperationResult>`\ 的对应方法。

   通过\ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 返回成功或失败，返回值参见\ ``OperationResult``\ 中定义。 通过\ :java:ref:`getIDCard()`\ 返回身份证上的个人信息。

Methods
-------
getIDCard
^^^^^^^^^

.. java:method::  IDCard getIDCard()
   :outertype: IDCardReaderOperationResult

   返回身份证对象。

   :return: IDCard

