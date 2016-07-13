.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

LEDDevice
=========

.. java:package:: com.unionpay.cloudpos.led
   :noindex:

.. java:type:: public interface LEDDevice extends Device

   \ **LEDDevice**\ 定义了LED设备的接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      LEDDevice lEDDevice =
              (LEDDevice) POSTerminal.getInstance().getDevice("cloudpos.device.led");

   其中，"cloudpos.device.led"是标识LED设备的字符串，由具体的实现定义。

   可以通过以下步骤对LED设备对象进行操作:

   ..

   #. 通过前面的介绍，得到LED设备对象。
   #. 调用\ :java:ref:`open(int)`\ ,打开成功后，和对应的LED设备建立了连接。
   #. 调用\ :java:ref:`turnOn()`\ ,可以点亮该LED设备，直到程序调用了\ :java:ref:`turnOff()`\ ,灭掉该LED设备，或者调用\ :java:ref:`close()`\ ,关闭某个LED设备 。
   #. 有两种方法可以让某个LED灯闪烁，一为同步方法：\ ``blink``\ ,一为异步方法\ ``startBlink``\ ,程序可以自行选择闪烁方式。 值得注意的是，如果选择异步方法，可以通过调用\ :java:ref:`cancelBlink()`\ 来取消闪烁。同步方法不能取消，会按照设定的开关时间及频次闪烁下去。
   #. 调用\ :java:ref:`close()`\ ,关闭某个LED设备 。
   #. 父类接口\ :java:ref:`cancelRequest()`\ ,在这里是没有效果的。由于闪烁的异步方法不带有超时概念，和其他设备的异步监听响应机制不同。这里用\ :java:ref:`cancelBlink()`\ 来取消异步闪烁。

   为了正常访问LED设备，请在Android Manifest文件中设置LED访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_LED" />

   **See also:** :java:ref:`Device`

Fields
------
STATUS_OFF
^^^^^^^^^^

.. java:field::  int STATUS_OFF
   :outertype: LEDDevice

   关闭状态

STATUS_ON
^^^^^^^^^

.. java:field::  int STATUS_ON
   :outertype: LEDDevice

   点亮状态

Methods
-------
blink
^^^^^

.. java:method::  void blink(long delayTurnOn, long delayTurnOff, int counts) throws DeviceException
   :outertype: LEDDevice

   使某个led灯进行闪烁，同步方法，不能被取消。

   :param delayTurnOn: 指定Led灯所需要打开的时间。单位ms。
   :param delayTurnOff: 指定Led灯所需要关闭的时间。单位ms。
   :param counts: 周期，持续次数。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

blink
^^^^^

.. java:method::  void blink(byte color, long delayTurnOn, long delayTurnOff, int counts) throws DeviceException
   :outertype: LEDDevice

   使某个led灯进行闪烁，同步方法，不能被取消。 Led灯的颜色参见\ :java:ref:`LEDDeviceSpec <LEDDeviceSpec>`\ 颜色定义。

   :param color: 指定Led灯的颜色。
   :param delayTurnOn: 指定Led灯所需要打开的时间。单位ms。
   :param delayTurnOff: 指定Led灯所需要关闭的时间。单位ms。
   :param counts: 周期，持续次数。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

cancelBlink
^^^^^^^^^^^

.. java:method::  void cancelBlink() throws DeviceException
   :outertype: LEDDevice

   取消LED设备闪烁，调用该方法，当前闪烁的LED设备会停止闪烁。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

getLogicalID
^^^^^^^^^^^^

.. java:method::  int getLogicalID() throws DeviceException
   :outertype: LEDDevice

   返回正在使用的 logicalID。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: logicalID 设备逻辑ID。 -1 未打开任何led灯。

getStatus
^^^^^^^^^

.. java:method::  int getStatus() throws DeviceException
   :outertype: LEDDevice

   返回LED的当前状态。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 状态常量：\ :java:ref:`STATUS_OFF`\  或者 \ :java:ref:`STATUS_ON`\ 。

open
^^^^

.. java:method::  void open(int logicalID) throws DeviceException
   :outertype: LEDDevice

   打开LED设备,和对应的LED设备建立连接。

   :param logicalID: 设备逻辑ID。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

startBlink
^^^^^^^^^^

.. java:method::  void startBlink(long delayTurnOn, long delayTurnOff, int counts) throws DeviceException
   :outertype: LEDDevice

   使某个led灯进行闪烁，异步方法，可以被取消。

   :param delayTurnOn: 指定Led灯所需要打开的时间。单位ms。
   :param delayTurnOff: 指定Led灯所需要关闭的时间。单位ms。
   :param counts: 周期，持续次数。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

startBlink
^^^^^^^^^^

.. java:method::  void startBlink(byte color, long delayTurnOn, long delayTurnOff, int counts) throws DeviceException
   :outertype: LEDDevice

   使某个led灯进行闪烁，异步方法，可以被取消。Led灯的颜色参见\ :java:ref:`LEDDeviceSpec <LEDDeviceSpec>`\ 颜色定义。

   :param color: 指定Led灯的颜色。
   :param delayTurnOn: 指定Led灯所需要打开的时间。单位ms。
   :param delayTurnOff: 指定Led灯所需要关闭的时间。单位ms。
   :param counts: 周期，持续次数。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

startBlink
^^^^^^^^^^

.. java:method::  void startBlink(long delayTurnOn, long delayTurnOff) throws DeviceException
   :outertype: LEDDevice

   使某个led灯进行闪烁，异步方法，可以被取消。

   :param delayTurnOn: 指定Led灯所需要打开的时间。单位ms。
   :param delayTurnOff: 指定Led灯所需要关闭的时间。单位ms。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

turnOff
^^^^^^^

.. java:method::  void turnOff() throws DeviceException
   :outertype: LEDDevice

   关闭led灯.

   Led灯会灭掉。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

turnOn
^^^^^^

.. java:method::  void turnOn() throws DeviceException
   :outertype: LEDDevice

   打开led灯。

   LED灯会一直亮下去，直到调用\ :java:ref:`turnOff()`\ 或\ :java:ref:`close()`\

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

