.. java:import:: com.unionpay.cloudpos DeviceSpec

PINPadDeviceSpec
================

.. java:package:: com.unionpay.cloudpos.pinpad
   :noindex:

.. java:type:: public interface PINPadDeviceSpec extends DeviceSpec

   \ **PINPadDeviceSpec**\ 定义了对PIN输入设备的详细描述。

   可以得到终端中关于PINPad的定义的信息。

Methods
-------
canGetRandom
^^^^^^^^^^^^

.. java:method::  boolean canGetRandom(int logicalID)
   :outertype: PINPadDeviceSpec

   是否支持获取随机数。

   :param logicalID: 设备逻辑ID，默认1
   :return: \ ``true``\  支持取随机数， \ ``false``\  不支持取随机数，参数错误也返回false.

canShowText
^^^^^^^^^^^

.. java:method::  boolean canShowText(int logicalID)
   :outertype: PINPadDeviceSpec

   是否支持显示文本。

   :param logicalID: 设备逻辑ID，默认1
   :return: \ ``true``\  支持， \ ``false``\  不支持，参数错误也返回false.

getCounts
^^^^^^^^^

.. java:method::  int getCounts()
   :outertype: PINPadDeviceSpec

   可支持的最大PIN输入设备数量。

   :return: 返回支持的数量，不支持返回0

isInternal
^^^^^^^^^^

.. java:method::  boolean isInternal(int logicalID)
   :outertype: PINPadDeviceSpec

   是否是内置PIN输入设备。

   如果是内置，那么系统提供密码输入界面。

   :param logicalID: 设备逻辑ID，默认1
   :return: \ ``true``\  内置PIN输入设备， \ ``false``\  外置PIN输入设备，参数错误及不支持也返回false.

