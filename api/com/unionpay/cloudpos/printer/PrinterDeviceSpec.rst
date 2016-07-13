.. java:import:: com.unionpay.cloudpos DeviceSpec

PrinterDeviceSpec
=================

.. java:package:: com.unionpay.cloudpos.printer
   :noindex:

.. java:type:: public interface PrinterDeviceSpec extends DeviceSpec

   \ **PrinterDeviceSpec**\ 定义了对打印机的详细描述。

   可以得到终端中关于打印机定义的信息。

Methods
-------
canCutPaper
^^^^^^^^^^^

.. java:method::  boolean canCutPaper(int logicalID)
   :outertype: PrinterDeviceSpec

   打印机是否能切纸。

   :param logicalID: 打印机逻辑ID，默认为0
   :return: \ ``true``\  支持，\ ``false``\  不支持，参数错误也返回false.

canSetDensity
^^^^^^^^^^^^^

.. java:method::  boolean canSetDensity(int logicalID)
   :outertype: PrinterDeviceSpec

   是否支持打印浓度的设定。

   :param logicalID: 打印机逻辑ID，默认为0
   :return: \ ``true``\  支持，\ ``false``\ 不支持，参数错误也返回false.

getBarCodeFormat
^^^^^^^^^^^^^^^^

.. java:method::  String[] getBarCodeFormat(int logicalID)
   :outertype: PrinterDeviceSpec

   返回可打印barcode的格式。

   :param logicalID: 打印机逻辑ID，默认为0
   :return: 可打印条码的格式，参数错误及不支持返回null.

getBaseFontHeight
^^^^^^^^^^^^^^^^^

.. java:method::  int getBaseFontHeight(int logicalID)
   :outertype: PrinterDeviceSpec

   返回标准字体的点数高度。

   :param logicalID: 打印机逻辑ID，默认为0
   :return: 打印机的标准字体的高度，参数错误及不支持返回0.

getCounts
^^^^^^^^^

.. java:method::  int getCounts()
   :outertype: PrinterDeviceSpec

   返回当前终端有几个打印机。

   :return: 终端中打印机个数，不支持返回0.

getWidth
^^^^^^^^

.. java:method::  int getWidth(int logicalID)
   :outertype: PrinterDeviceSpec

   返回可打印的最大宽度。

   :param logicalID: 打印机逻辑ID，默认为0
   :return: 打印机的最大显示宽度 ，参数错误及不支持返回0.

