.. java:import:: com.unionpay.cloudpos DeviceSpec

LEDDeviceSpec
=============

.. java:package:: com.unionpay.cloudpos.led
   :noindex:

.. java:type:: public interface LEDDeviceSpec extends DeviceSpec

   \ **LEDDeviceSpec**\ 定义了对LED的详细描述。

   可以得到终端中关于LED定义的信息。

Fields
------
BLUE
^^^^

.. java:field::  byte BLUE
   :outertype: LEDDeviceSpec

GREEN
^^^^^

.. java:field::  byte GREEN
   :outertype: LEDDeviceSpec

RED
^^^

.. java:field::  byte RED
   :outertype: LEDDeviceSpec

WHITE
^^^^^

.. java:field::  byte WHITE
   :outertype: LEDDeviceSpec

YELLOW
^^^^^^

.. java:field::  byte YELLOW
   :outertype: LEDDeviceSpec

Methods
-------
canQuickBlink
^^^^^^^^^^^^^

.. java:method::  boolean canQuickBlink(int logicalID)
   :outertype: LEDDeviceSpec

   是否支持快速闪烁。

   500ms闪烁一次

   :param logicalID: 设备逻辑ID
   :return: \ ``true``\  支持， \ ``false``\  不支持，参数错误也返回false.

canSlowBlink
^^^^^^^^^^^^

.. java:method::  boolean canSlowBlink(int logicalID)
   :outertype: LEDDeviceSpec

   是否支持慢速闪烁。

   1s闪烁一次

   :param logicalID: 设备逻辑ID
   :return: \ ``true``\  支持， \ ``false``\  不支持，参数错误也返回false.

getColors
^^^^^^^^^

.. java:method::  byte[] getColors(int logicalID)
   :outertype: LEDDeviceSpec

   返回LED设备的颜色。

   :param logicalID: 设备逻辑ID
   :return: int 颜色，参数错误及不支持返回null.

getCounts
^^^^^^^^^

.. java:method::  int getCounts()
   :outertype: LEDDeviceSpec

   返回可以操作的LED灯数量。

   :return: 返回LED灯的数量。不支持返回0.

