.. java:import:: com.unionpay.cloudpos OperationResult

PINPadOperationResult
=====================

.. java:package:: com.unionpay.cloudpos.pinpad
   :noindex:

.. java:type:: public interface PINPadOperationResult extends OperationResult

   PIN输入设备的操作结果对象

   \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult`\ 的对应方法。

   通过\ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 返回PIN输入设备的结果状态 ， 通过\ :java:ref:`getEncryptedPINBlock() <PINPadOperationResult.getEncryptedPINBlock()>`\ 返回加过密的PIN Block。

Methods
-------
getEncryptedPINBlock
^^^^^^^^^^^^^^^^^^^^

.. java:method::  byte[] getEncryptedPINBlock()
   :outertype: PINPadOperationResult

   返回加过密的PIN Block。

   :return: 结果buffer流。

