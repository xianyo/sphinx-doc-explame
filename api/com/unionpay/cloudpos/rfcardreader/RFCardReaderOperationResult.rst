.. java:import:: com.unionpay.cloudpos OperationResult

.. java:import:: com.unionpay.cloudpos.card CPUCard

.. java:import:: com.unionpay.cloudpos.card Card

.. java:import:: com.unionpay.cloudpos.card MifareCard

.. java:import:: com.unionpay.cloudpos.card MifareUltralightCard

RFCardReaderOperationResult
===========================

.. java:package:: com.unionpay.cloudpos.rfcardreader
   :noindex:

.. java:type:: public interface RFCardReaderOperationResult extends OperationResult

   \ ``RFCardReaderOperationResult``\ 是被非接卡读卡设备产生，用来返回非接卡的操作结果

   \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult <OperationResult>`\ 的对应方法。

   这里通过"ERR_"设置了本设备相关的自定义错误，可以在\ :java:ref:`getResultCode（） <OperationResult.getResultCode()>`\ 返回。 通过\ :java:ref:`getCard() <RFCardReaderOperationResult.getCard()>`\ 返回非接卡数据对象。 得到卡对象后，应用程序可以自行区分不同类别的卡，进行卡的后续操作。 一般返回的卡类型为\ :java:ref:`CPUCard <CPUCard>`\ ,\ :java:ref:`MifareCard <MifareCard>`\ ,\ :java:ref:`MifareUltralightCard <MifareUltralightCard>`\ , 其中后两种属于\ ``MemoryCard``\

Fields
------
ERR_CARD_UNREACHABLE
^^^^^^^^^^^^^^^^^^^^

.. java:field::  int ERR_CARD_UNREACHABLE
   :outertype: RFCardReaderOperationResult

   卡无法通讯

ERR_COMMUNICATION
^^^^^^^^^^^^^^^^^

.. java:field::  int ERR_COMMUNICATION
   :outertype: RFCardReaderOperationResult

   发生通讯错误

ERR_MULTI_CARD
^^^^^^^^^^^^^^

.. java:field::  int ERR_MULTI_CARD
   :outertype: RFCardReaderOperationResult

   多张卡片被放入非接触式IC卡阅读器

ERR_PROTOCOL
^^^^^^^^^^^^

.. java:field::  int ERR_PROTOCOL
   :outertype: RFCardReaderOperationResult

   通讯协议错误

Methods
-------
getCard
^^^^^^^

.. java:method::  Card getCard()
   :outertype: RFCardReaderOperationResult

   返回扫描到的卡片。

   :return: 扫描到的非接卡片

   **See also:** :java:ref:`MifareCard`, :java:ref:`MifareUltralightCard`, :java:ref:`CPUCard`

