.. java:import:: com.unionpay.cloudpos DeviceSpec

SecondaryDisplayDeviceSpec
==========================

.. java:package:: com.unionpay.cloudpos.secondarydisplay
   :noindex:

.. java:type:: public interface SecondaryDisplayDeviceSpec extends DeviceSpec

   \ **SecondaryDisplayDeviceSpec**\ 定义了对客显设备的详细描述。

   可以得到终端中关于客显定义的信息。

Methods
-------
getHeight
^^^^^^^^^

.. java:method::  int getHeight()
   :outertype: SecondaryDisplayDeviceSpec

   返回客显屏幕的高度。

   :return: 高度，不支持返回0.

getWidth
^^^^^^^^

.. java:method::  int getWidth()
   :outertype: SecondaryDisplayDeviceSpec

   返回客显屏幕的宽度。

   :return: 宽度，不支持返回0.

