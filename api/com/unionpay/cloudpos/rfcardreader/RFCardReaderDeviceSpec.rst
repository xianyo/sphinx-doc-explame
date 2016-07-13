.. java:import:: com.unionpay.cloudpos DeviceSpec

RFCardReaderDeviceSpec
======================

.. java:package:: com.unionpay.cloudpos.rfcardreader
   :noindex:

.. java:type:: public interface RFCardReaderDeviceSpec extends DeviceSpec

   \ **RFCardReaderDeviceSpec**\ 定义了对非接卡读卡器的详细描述。

   可以得到终端中关于非接触式IC卡阅读器定义的信息。

Methods
-------
getSupportedModes
^^^^^^^^^^^^^^^^^

.. java:method::  int[] getSupportedModes()
   :outertype: RFCardReaderDeviceSpec

   返回非接卡模式。 模式定义见\ :java:ref:`RFCardReaderDevice <RFCardReaderDevice>`\ 常量部分定义。

   :return: 返回模式，不支持返回null。

isRemovable
^^^^^^^^^^^

.. java:method::  boolean isRemovable()
   :outertype: RFCardReaderDeviceSpec

   是否支持等待卡片移除.

   :return: \ ``true``\  支持，\ ``false``\  不支持.

