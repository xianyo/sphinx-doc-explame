.. java:import:: com.unionpay.cloudpos DeviceSpec

SmartCardReaderDeviceSpec
=========================

.. java:package:: com.unionpay.cloudpos.smartcardreader
   :noindex:

.. java:type:: public interface SmartCardReaderDeviceSpec extends DeviceSpec

   \ **SmartCardReaderDeviceSpec**\ 定义了对SmartCard读卡器的详细描述。

   可以得到终端中关于接触式IC卡阅读器设备定义的信息。

Methods
-------
canRemovable
^^^^^^^^^^^^

.. java:method::  boolean canRemovable(int logicalID)
   :outertype: SmartCardReaderDeviceSpec

   是否支持中断插入和移除卡片操作。

   :param logicalID: 打开IC卡读卡器的设备编号，0对应底部的插槽，1、2、3对应终端背面的PSAM卡槽
   :return: \ ``true``\  支持,\ ``false``\  不支持，参数错误也返回false.

getCounts
^^^^^^^^^

.. java:method::  int getCounts()
   :outertype: SmartCardReaderDeviceSpec

   返回有多少个卡槽。

   :return: 卡槽数量，不支持返回0

