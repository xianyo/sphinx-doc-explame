��          �               L  [   M     �     �     �     �     �     �     �  �     k   �               /  /   B     r     �  )  �     �  �  �  [   m     �     �     �     �                 �   7  k   �     7	     ?	     O	  /   b	     �	     �	  )  �	     �   **See also:** :java:ref:`MifareCard`, :java:ref:`MifareUltralightCard`, :java:ref:`CPUCard` ERR_CARD_UNREACHABLE ERR_COMMUNICATION ERR_MULTI_CARD ERR_PROTOCOL Fields Methods RFCardReaderOperationResult \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult <OperationResult>`\ 的对应方法。 \ ``RFCardReaderOperationResult``\ 是被非接卡读卡设备产生，用来返回非接卡的操作结果 getCard 卡无法通讯 发生通讯错误 多张卡片被放入非接触式IC卡阅读器 扫描到的非接卡片 返回扫描到的卡片。 这里通过"ERR_"设置了本设备相关的自定义错误，可以在\ :java:ref:`getResultCode（） <OperationResult.getResultCode()>`\ 返回。 通过\ :java:ref:`getCard() <RFCardReaderOperationResult.getCard()>`\ 返回非接卡数据对象。 得到卡对象后，应用程序可以自行区分不同类别的卡，进行卡的后续操作。 一般返回的卡类型为\ :java:ref:`CPUCard <CPUCard>`\ ,\ :java:ref:`MifareCard <MifareCard>`\ ,\ :java:ref:`MifareUltralightCard <MifareUltralightCard>`\ , 其中后两种属于\ ``MemoryCard``\ 通讯协议错误 Project-Id-Version: Sphinx-doc 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-13 18:05+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hans_CN
Language-Team: zh_Hans_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 **See also:** :java:ref:`MifareCard`, :java:ref:`MifareUltralightCard`, :java:ref:`CPUCard` ERR_CARD_UNREACHABLE ERR_COMMUNICATION ERR_MULTI_CARD ERR_PROTOCOL Fields Methods RFCardReaderOperationResult \ :java:ref:`getResultCode() <OperationResult.getResultCode()>`\ 方法继承至\ :java:ref:`OperationResult <OperationResult>`\ 的对应方法。 \ ``RFCardReaderOperationResult``\ 是被非接卡读卡设备产生，用来返回非接卡的操作结果 getCard 卡无法通讯 发生通讯错误 多张卡片被放入非接触式IC卡阅读器 扫描到的非接卡片 返回扫描到的卡片。 这里通过"ERR_"设置了本设备相关的自定义错误，可以在\ :java:ref:`getResultCode（） <OperationResult.getResultCode()>`\ 返回。 通过\ :java:ref:`getCard() <RFCardReaderOperationResult.getCard()>`\ 返回非接卡数据对象。 得到卡对象后，应用程序可以自行区分不同类别的卡，进行卡的后续操作。 一般返回的卡类型为\ :java:ref:`CPUCard <CPUCard>`\ ,\ :java:ref:`MifareCard <MifareCard>`\ ,\ :java:ref:`MifareUltralightCard <MifareUltralightCard>`\ , 其中后两种属于\ ``MemoryCard``\ 通讯协议错误 