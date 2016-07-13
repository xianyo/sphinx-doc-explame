.. java:import:: com.unionpay.cloudpos DeviceSpec

SerialPortDeviceSpec
====================

.. java:package:: com.unionpay.cloudpos.serialport
   :noindex:

.. java:type:: public interface SerialPortDeviceSpec extends DeviceSpec

   \ **SerialPortDeviceSpec**\ 定义了对串口设备的详细描述。

   可以得到终端中关于串口设备定义的信息。

Methods
-------
getCounts
^^^^^^^^^

.. java:method::  int getCounts()
   :outertype: SerialPortDeviceSpec

   返回串口数量。

   :return: 终端中串口数量，不支持返回0

