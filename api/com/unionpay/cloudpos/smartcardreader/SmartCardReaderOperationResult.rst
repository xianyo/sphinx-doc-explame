.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos OperationResult

.. java:import:: com.unionpay.cloudpos.card CPUCard

.. java:import:: com.unionpay.cloudpos.card Card

.. java:import:: com.unionpay.cloudpos.card SLE4442Card

SmartCardReaderOperationResult
==============================

.. java:package:: com.unionpay.cloudpos.smartcardreader
   :noindex:

.. java:type:: public interface SmartCardReaderOperationResult extends OperationResult

   \ ``SmartCardReaderOperationResult``\ 是被SmartCard读卡设备产生，用来返回得到的卡对象。

   \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult`\ 的对应方法。

   这里通过"ERR_"设置了本设备相关的自定义错误，可以在\ :java:ref:`getResultCode（） <OperationResult.getResultCode()>`\ 返回错误或正确的操作结果。 通过\ :java:ref:`getCard() <SmartCardReaderOperationResult.getCard()>`\ 返回SmartCard卡数据对象。 得到卡对象后，应用程序可以自行区分不同类别的卡，进行卡的后续操作。 一般返回的卡类型为\ :java:ref:`CPUCard <CPUCard>`\ 或者\ :java:ref:`SLE4442Card <SLE4442Card>`\ 两种。

Methods
-------
getCard
^^^^^^^

.. java:method::  Card getCard()
   :outertype: SmartCardReaderOperationResult

   返回卡。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 卡对象。

   **See also:** :java:ref:`CPUCard`, :java:ref:`SLE4442Card`

