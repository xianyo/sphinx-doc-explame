.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos OperationListener

.. java:import:: com.unionpay.cloudpos OperationResult

.. java:import:: com.unionpay.cloudpos TimeConstants

SerialPortDevice
================

.. java:package:: com.unionpay.cloudpos.serialport
   :noindex:

.. java:type:: public interface SerialPortDevice extends Device

   \ **SerialPortDevice**\ 定义了串口设备的接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      SerialPortDevice serialPortDevice =
              (SerialPortDevice) POSTerminal.getInstance().getDevice("cloudpos.device.serialport");

   其中，"cloudpos.device.serialport"是标识串口设备的字符串，由具体的实现定义。

   可以通过以下步骤对串口设备对象进行操作:

   ..

   #. 通过前面的介绍，得到串口设备对象。
   #. 调用\ :java:ref:`open(int)`\ ,打开成功后，和对应的串口设备建立了连接。
   #. 调用\ :java:ref:`write(byte[],int,int)`\ ,可以将数据buffer流通过该打开的串口设备写到连接到该串口的某个设备中 。
   #. 有两种方法可以读取串口中传过来数据，一为同步方法：\ :java:ref:`waitForRead(int,int)`\ ,一为异步方法\ :java:ref:`listenForRead(int,OperationListener,int)`\ ,程序可以根据自身的业务逻辑自己选择哪种方式。 值得注意的是，如果选择异步方法，可以通过调用\ :java:ref:`cancelRequest()`\ 来取消。同步方法不能取消。这两种方法都定义了超时，因此即使不取消，在超时到来时，不管有没有数据过来，都会返回结果。
   #. 调用\ :java:ref:`close()`\ ,关闭某个串口设备 。

   为了正常访问串口设备，请在Android Manifest文件中设置串口访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_SERIAL"/>

   **See also:** :java:ref:`Device`

Fields
------
DATABITS_5
^^^^^^^^^^

.. java:field::  int DATABITS_5
   :outertype: SerialPortDevice

   数据位 5

DATABITS_6
^^^^^^^^^^

.. java:field::  int DATABITS_6
   :outertype: SerialPortDevice

   数据位 6

DATABITS_7
^^^^^^^^^^

.. java:field::  int DATABITS_7
   :outertype: SerialPortDevice

   数据位 7

DATABITS_8
^^^^^^^^^^

.. java:field::  int DATABITS_8
   :outertype: SerialPortDevice

   数据位 8

FLOWCONTROL_NONE
^^^^^^^^^^^^^^^^

.. java:field::  int FLOWCONTROL_NONE
   :outertype: SerialPortDevice

   无流控

FLOWCONTROL_RTSCTS_IN
^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int FLOWCONTROL_RTSCTS_IN
   :outertype: SerialPortDevice

   RTS/CTS 输入流控

FLOWCONTROL_RTSCTS_IN_OUT
^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int FLOWCONTROL_RTSCTS_IN_OUT
   :outertype: SerialPortDevice

   RTS/CTS 输入/输出流控

FLOWCONTROL_RTSCTS_OUT
^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int FLOWCONTROL_RTSCTS_OUT
   :outertype: SerialPortDevice

   RTS/CTS 输出流控

FLOWCONTROL_XONXOFF_IN
^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int FLOWCONTROL_XONXOFF_IN
   :outertype: SerialPortDevice

   XON/XOFF 输入软流控

FLOWCONTROL_XONXOFF_IN_OUT
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int FLOWCONTROL_XONXOFF_IN_OUT
   :outertype: SerialPortDevice

   XON/XOFF 输入/输出软流控

FLOWCONTROL_XONXOFF_OUT
^^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int FLOWCONTROL_XONXOFF_OUT
   :outertype: SerialPortDevice

   XON/XOFF 输出软流控

PARITY_EVEN
^^^^^^^^^^^

.. java:field::  int PARITY_EVEN
   :outertype: SerialPortDevice

   偶校验

PARITY_NONE
^^^^^^^^^^^

.. java:field::  int PARITY_NONE
   :outertype: SerialPortDevice

   无奇偶校验

PARITY_ODD
^^^^^^^^^^

.. java:field::  int PARITY_ODD
   :outertype: SerialPortDevice

   奇校验

STOPBITS_1
^^^^^^^^^^

.. java:field::  int STOPBITS_1
   :outertype: SerialPortDevice

   停止位 1

STOPBITS_1_5
^^^^^^^^^^^^

.. java:field::  int STOPBITS_1_5
   :outertype: SerialPortDevice

   1-1/2 停止位

STOPBITS_2
^^^^^^^^^^

.. java:field::  int STOPBITS_2
   :outertype: SerialPortDevice

   停止位 2

Methods
-------
changeFlowControlMode
^^^^^^^^^^^^^^^^^^^^^

.. java:method::  void changeFlowControlMode(int flowControl) throws DeviceException
   :outertype: SerialPortDevice

   设置流控

   :param flowControl: 在\ **SerialPortDevice**\ 中定义的常量：

   ..

   * FLOWCONTROL_NONE - 没有流控
   * FLOWCONTROL_RTSCTS_IN - RTS/CTS 输入硬件流控
   * FLOWCONTROL_RTSCTS_OUT - RTS/CTS 输出 硬件流控
   * FLOWCONTROL_RTSCTS_IN_OUT - RTS/CTS 双向硬件流控
   * FLOWCONTROL_XONXOFF_IN - XON/XOFF 输入软流控
   * FLOWCONTROL_XONXOFF_OUT - XON/XOFF 输出软流控
   * FLOWCONTROL_XONXOFF_IN_OUT - XON/XOFF输入/输出 软流控
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

changeRTS
^^^^^^^^^

.. java:method::  void changeRTS(boolean rts) throws DeviceException
   :outertype: SerialPortDevice

   设置RTS

   :param rts: \ ``true``\ 设置RTS, \ ``false``\ 清除RTS
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

changeSerialPortParams
^^^^^^^^^^^^^^^^^^^^^^

.. java:method::  void changeSerialPortParams(int baudrate, int dataBits, int stopBits, int parity) throws DeviceException
   :outertype: SerialPortDevice

   修改串口参数。

   :param baudrate: 波特率
   :param dataBits: 数据位

   ..

   * DATABITS_5 - 5 bits
   * DATABITS_6 - 6 bits
   * DATABITS_7 - 7 bits
   * DATABITS_8 - 8 bits
   :param stopBits: 停止位

   ..

   * STOPBITS_1 - 1 stop bit
   * STOPBITS_2 - 2 stop bits
   * STOPBITS_1_5 - 1.5 stop bits
   :param parity: 奇偶校验位

   ..

   * PARITY_NONE - no parity
   * PARITY_ODD - odd parity
   * PARITY_EVEN - even parity
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

getBaudRate
^^^^^^^^^^^

.. java:method::  int getBaudRate() throws DeviceException
   :outertype: SerialPortDevice

   返回串口波特率

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: integer 波特率

getDataBits
^^^^^^^^^^^

.. java:method::  int getDataBits() throws DeviceException
   :outertype: SerialPortDevice

   返回当前数据位。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ **SerialPortDevice**\ 中定义的如下常量：DATABITS_5, DATABITS_6, DATABITS_7, or DATABITS_8

getFlowControlMode
^^^^^^^^^^^^^^^^^^

.. java:method::  int getFlowControlMode() throws DeviceException
   :outertype: SerialPortDevice

   返回当前的流控设置

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 返回\ **SerialPortDevice**\ 中定义的常量：

   ..

   * FLOWCONTROL_NONE - 没有流控
   * FLOWCONTROL_RTSCTS_IN - RTS/CTS 输入硬件流控
   * FLOWCONTROL_RTSCTS_OUT - RTS/CTS 输出 硬件流控
   * FLOWCONTROL_RTSCTS_IN_OUT - RTS/CTS 双向硬件流控
   * FLOWCONTROL_XONXOFF_IN - XON/XOFF 输入软流控
   * FLOWCONTROL_XONXOFF_OUT - XON/XOFF 输出软流控
   * FLOWCONTROL_XONXOFF_IN_OUT - XON/XOFF输入/输出 软流控

getParity
^^^^^^^^^

.. java:method::  int getParity() throws DeviceException
   :outertype: SerialPortDevice

   返回奇偶校验位

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 如下常量： PARITY_NONE, PARITY_ODD, or PARITY_EVEN

getStopBits
^^^^^^^^^^^

.. java:method::  int getStopBits() throws DeviceException
   :outertype: SerialPortDevice

   返回停止位。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 停止位是以下常量：STOPBITS_1, STOPBITS_2, or STOPBITS_1_5

listenForRead
^^^^^^^^^^^^^

.. java:method::  void listenForRead(int len, OperationListener listener, int timeout) throws DeviceException
   :outertype: SerialPortDevice

   从包含的输入流中将最多\ ``len``\ 个字节读入一个\ ``data``\  数组中。 尽量读取\ ``len``\ 个字节，但读取的字节数可能少于\ ``len``\ 个，也可能为零。以整数形式返回实际读取的字节数。 如果\ ``len``\ 为零，则不读取任何字节并返回 0；否则，尝试读取至少一个字节。如果因为流位于文件未尾而没有字节可用，则返回值 -1；否则，至少读取一个字节并将其存储到\ ``data``\ 中。

   将读取的第一个字节存储到元素\ ``data[offset]``\  中，将下一个字节存储到\ ``data[offset+1]``\ 中， 依此类推。读取的字节数至多等于\ ``len``\ 。 设 k 为实际读取的字节数；这些字节将存储在\ ``data[offset]``\ 到\ ``data[offset+k-1]``\ 的元素中，\ ``data[offset+k]``\ 到\ ``data[offset+len-1]``\ 的元素不受影响。 在所有情况下，\ ``data[0]``\ 到\ ``data[offset]``\ 的元素和\ ``data[offset+len]``\ 到\ ``data[data.length-1]``\ 的元素都不受影响。

   本方法会正确响应 \ :java:ref:`cancelRequest()`\ 方法来取消操作。

   本方法是一个异步方法，应用程序发出读取命令后，终端通过操作监听者\ :java:ref:`handleResult() <OperationListener.handleResult(OperationResult)>`\ 方法返回结果。 每个应用程序必须定义自己的OperationListener，在回调函数handleResult()中对返回结果进行处理。如下所示：

   .. parsed-literal::

      OperationListener operationListener = new OperationListener(){
          @Override
          public void handleResult(OperationResult result) {
              // handleResult
          }
      });

   方法通过设置timeout来决定最多等待多长时间。请求开始执行的时候timeout开始计时。

   如果timeout时间到了，但还没有数据读到，也会回调函数handleResult()。此时 OperationResult会返回错误：\ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ ，同时没有任何数据返回

   如果timeout是\ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ，方法会一直等待，直到有数据返回或取消。

   如果timeout是\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ ，方法会马上返回。

   :param len: 需要读取的最大长度
   :param listener: 操作监听者。
   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

   **See also:** :java:ref:`OperationListener.handleResult`, :java:ref:`SerialPortOperationResult`, :java:ref:`TimeConstants.FOREVER`, :java:ref:`TimeConstants.IMMEDIATE`

open
^^^^

.. java:method::  void open(int logicID) throws DeviceException
   :outertype: SerialPortDevice

   打开某个逻辑ID的串口设备

   :param logicID: 串口设备逻辑ID
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

retrieveCTS
^^^^^^^^^^^

.. java:method::  boolean retrieveCTS() throws DeviceException
   :outertype: SerialPortDevice

   返回CTS状态

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: true, CTS已经被设置，false, CTS已经被清除

retrieveRTS
^^^^^^^^^^^

.. java:method::  boolean retrieveRTS() throws DeviceException
   :outertype: SerialPortDevice

   返回当前RTS状态

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: true, RTS已经被设置 false, RTS已被清除

waitForRead
^^^^^^^^^^^

.. java:method::  SerialPortOperationResult waitForRead(int len, int timeout) throws DeviceException
   :outertype: SerialPortDevice

   本方法是上述对应的 \ :java:ref:`listenForRead(int,OperationListener,int)`\ 方法的同步版本。

   只有当超时发生或者操作正常完成，本次调用才会返回。

   由于带有超时，本方法会响应\ :java:ref:`cancelRequest()`\ 方法。

   如果超时发生，会返回这个操作结果： \ :java:ref:`ERR_TIMEOUT <OperationResult.ERR_TIMEOUT>`\ 。

   :param len: 需要读取的最大长度
   :param timeout: 超时
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 操作结果\ ``SerialPortOperationResult``\

   **See also:** :java:ref:`SerialPortOperationResult`, :java:ref:`TimeConstants.FOREVER`, :java:ref:`TimeConstants.IMMEDIATE`

write
^^^^^

.. java:method::  void write(byte[] data, int offset, int len) throws DeviceException
   :outertype: SerialPortDevice

   将指定\ ``data``\ 数组中从偏移量\ ``offset``\  开始的\ ``len``\ 个字节写入串口。

   :param data: 数据
   :param offset: 数据中的起始偏移量。
   :param len: 要写入的字节数。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

