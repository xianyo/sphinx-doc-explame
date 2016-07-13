.. java:import:: android.graphics Bitmap

.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos TimeConstants

PrinterDevice
=============

.. java:package:: com.unionpay.cloudpos.printer
   :noindex:

.. java:type:: public interface PrinterDevice extends Device, TimeConstants

   \ **PrinterDevice**\ 定义了对打印机的操作方法。任何具体的实现都必须实现这个接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      PrinterDevice printerDevice =
              (PrinterDevice) POSTerminal.getInstance().getDevice("cloudpos.device.printer");

   其中，"cloudpos.device.printer"是标识打印机的字符串，由具体的实现定义。

   使用打印机设备对象可以打印文本，图片，条码，并且可以发送ESC指令。

   为了正常访问打印机设备，请在Android Manifest文件中设置打印机访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_PRINTER"/>

   **See also:** :java:ref:`Device`

Fields
------
BARCODE_CODABAR
^^^^^^^^^^^^^^^

.. java:field:: public static final int BARCODE_CODABAR
   :outertype: PrinterDevice

   CODABAR。

BARCODE_CODE128
^^^^^^^^^^^^^^^

.. java:field:: public static final int BARCODE_CODE128
   :outertype: PrinterDevice

   CODE128。

BARCODE_CODE39
^^^^^^^^^^^^^^

.. java:field:: public static final int BARCODE_CODE39
   :outertype: PrinterDevice

   CODE39码。

BARCODE_CODE93
^^^^^^^^^^^^^^

.. java:field:: public static final int BARCODE_CODE93
   :outertype: PrinterDevice

   CODE93。

BARCODE_HRI_POS_ABOVE
^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int BARCODE_HRI_POS_ABOVE
   :outertype: PrinterDevice

   HRI在条码上面。

BARCODE_HRI_POS_BELOW
^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int BARCODE_HRI_POS_BELOW
   :outertype: PrinterDevice

   HRI字符在条码下面。

BARCODE_HRI_POS_BOTH
^^^^^^^^^^^^^^^^^^^^

.. java:field::  int BARCODE_HRI_POS_BOTH
   :outertype: PrinterDevice

   HRI字符在条码上下都有。

BARCODE_HRI_POS_NONE
^^^^^^^^^^^^^^^^^^^^

.. java:field::  int BARCODE_HRI_POS_NONE
   :outertype: PrinterDevice

   没有HRI字符。

BARCODE_ITF
^^^^^^^^^^^

.. java:field:: public static final int BARCODE_ITF
   :outertype: PrinterDevice

   TIF码。

BARCODE_JAN13
^^^^^^^^^^^^^

.. java:field:: public static final int BARCODE_JAN13
   :outertype: PrinterDevice

   JAN13条形码。

BARCODE_JAN8
^^^^^^^^^^^^

.. java:field:: public static final int BARCODE_JAN8
   :outertype: PrinterDevice

   JAN8条形码。

BARCODE_UPC_A
^^^^^^^^^^^^^

.. java:field:: public static final int BARCODE_UPC_A
   :outertype: PrinterDevice

   下述条码常量主要针对某些可以直接打印条码的打印机。

   UPC-A条形码。

BARCODE_UPC_E
^^^^^^^^^^^^^

.. java:field:: public static final int BARCODE_UPC_E
   :outertype: PrinterDevice

   UPC-E条形码。

STATUS_OUT_OF_PAPER
^^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int STATUS_OUT_OF_PAPER
   :outertype: PrinterDevice

   缺少打印纸张。

STATUS_PAPER_EXIST
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int STATUS_PAPER_EXIST
   :outertype: PrinterDevice

   打印机中已存在纸张。

Methods
-------
cutPaper
^^^^^^^^

.. java:method::  void cutPaper() throws DeviceException
   :outertype: PrinterDevice

   切纸，但仅仅是支持的打印机才会有此功能。

   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。

getDefaultParameters
^^^^^^^^^^^^^^^^^^^^

.. java:method::  Format getDefaultParameters() throws DeviceException
   :outertype: PrinterDevice

   返回默认的打印格式。

   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。
   :return: 打印格式。

open
^^^^

.. java:method::  void open(int logicalID) throws DeviceException
   :outertype: PrinterDevice

   打开某个逻辑ID的打印机。

   打开成功，设备对象就和相应的逻辑ID的打印机建立了连接。此后可以进行后面的各项操作。

   设备对象去打开某个已经打开（被当前设备对象或其他设备对象）的逻辑ID的打印机会抛出异常\ :java:ref:`BAD_CONTROL_MODE <DeviceException.BAD_CONTROL_MODE>`\ 。

   设备对象打开某个逻辑ID的打印机，再打开另外一个逻辑ID的打印机，会抛出异常\ :java:ref:`BAD_CONTROL_MODE <DeviceException.BAD_CONTROL_MODE>`\ 。

   :param logicalID: 打印机逻辑ID，
   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。

printBarcode
^^^^^^^^^^^^

.. java:method::  void printBarcode(Format format, int barcodeType, String barcode) throws DeviceException
   :outertype: PrinterDevice

   打印条码。

   通过format对象来控制打印条码的格式。如果通过这个接口传入了format对象，那么打印机后续的打印也按照这个format对象所包含的格式来执行。

   如果有新的带有format对象的接口被调用，那么会合并新的格式。打印机后续的打印也按照新的合并后的格式执行。

   合并的原则是：新的format对象中存在旧的format对象中不存在的格式，那么该格式会包含进去；新旧format中都存在的，用新的格式替换旧的。

   :param format: 条码格式，参考\ :java:ref:`Format <Format>`\ 中的定义。
   :param barcodeType: 见本接口定义的常量。
   :param barcode: 条码内容。
   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。

printBitmap
^^^^^^^^^^^

.. java:method::  void printBitmap(Bitmap bitmap) throws DeviceException
   :outertype: PrinterDevice

   打印图片。

   :param bitmap:
   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。

printBitmap
^^^^^^^^^^^

.. java:method::  void printBitmap(Format format, Bitmap bitmap) throws DeviceException
   :outertype: PrinterDevice

   打印图片。

   通过format对象来控制打印图片的格式。如果通过这个接口传入了format对象，那么打印机后续的打印也按照这个format对象所包含的格式来执行。

   如果有新的带有format对象的接口被调用，那么会合并新的格式。打印机后续的打印也按照新的合并后的格式执行。

   合并的原则是：新的format对象中存在旧的format对象中不存在的格式，那么该格式会包含进去；新旧format中都存在的，用新的格式替换旧的。

   :param bitmap:
   :param format: 参考\ :java:ref:`Format <Format>`\ 中的定义。
   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。

printText
^^^^^^^^^

.. java:method::  void printText(String message) throws DeviceException
   :outertype: PrinterDevice

   打印字符串。 默认不换行，加\n 才换行。

   :param message: 打印的字符串数据。
   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。

printText
^^^^^^^^^

.. java:method::  void printText(Format format, String message) throws DeviceException
   :outertype: PrinterDevice

   打印字符串。 默认不换行，加\n 才换行。

   通过format对象来控制打印字符串的格式。如果通过这个接口传入了format对象，那么打印机后续的打印也按照这个format对象所包含的格式来执行。

   如果有新的带有format对象的接口被调用，那么会合并新的格式。打印机后续的打印也按照新的合并后的格式执行。

   合并的原则是：新的format对象中存在旧的format对象中不存在的格式，那么该格式会包含进去；新旧format中都存在的，用新的格式替换旧的。

   :param format: 用于控制字符串格式。
   :param message: 打印的字符串数据。
   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。

queryStatus
^^^^^^^^^^^

.. java:method::  int queryStatus() throws DeviceException
   :outertype: PrinterDevice

   查询打印机纸张状态

   :return: \ ``-101``\  缺纸 ,\ ``1``\ 打印机状态正常 ,\ ``-102``\  打印机异常 .

sendESCCommand
^^^^^^^^^^^^^^

.. java:method::  int sendESCCommand(byte[] esc) throws DeviceException
   :outertype: PrinterDevice

   通用发送ESC指令，并获得可能的返回结果。

   打印指令的详细定义由厂商给出。

   :param esc: ESC指令数据
   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\ 中的定义。
   :return: 发送结果返回值

