.. java:import:: android.graphics Bitmap

.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

SecondaryDisplayDevice
======================

.. java:package:: com.unionpay.cloudpos.secondarydisplay
   :noindex:

.. java:type:: public interface SecondaryDisplayDevice extends Device

   \ **SecondaryDisplayDevice**\ 定义了客显设备的接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      SecondaryDisplayDevice secondaryDisplayDevice =
              (SecondaryDisplayDevice) POSTerminal.getInstance().getDevice("cloudpos.device.secondarydisplay");

   其中，"cloudpos.device.secondaryDisplay"是标识客显设备的字符串，由具体的实现定义。

   使用客显设备对象，可以将内容以图片的形式显示在客显屏幕上。也可以让客显屏发出声音。

   为了正常访问客显设备，请在Android Manifest文件中设置客显设备访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_CUSTOMER_DISPLAY"/>

   **See also:** :java:ref:`Device`

Methods
-------
beep
^^^^

.. java:method:: public void beep() throws DeviceException
   :outertype: SecondaryDisplayDevice

   让客显设备发声音。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

display
^^^^^^^

.. java:method:: public void display(Bitmap bitmap, int offsetX, int offsetY) throws DeviceException
   :outertype: SecondaryDisplayDevice

   设置客显设备背景图片。

   :param bitmap: 位图
   :param offsetX: 图片显示位置：距离左上角的x方向位置
   :param offsetY: 图片显示位置：距离左上角y方向位置
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

display
^^^^^^^

.. java:method:: public void display(Bitmap bitmap) throws DeviceException
   :outertype: SecondaryDisplayDevice

   设置客显设备背景图片。

   :param bitmap: 位图
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

open
^^^^

.. java:method:: public void open(int logicalID) throws DeviceException
   :outertype: SecondaryDisplayDevice

   打开某个逻辑ID的客显服务。

   :param logicalID: 客显模块逻辑ID
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

resetDisplay
^^^^^^^^^^^^

.. java:method:: public void resetDisplay() throws DeviceException
   :outertype: SecondaryDisplayDevice

   恢复客显设备默认设置。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

setBackgroundColor
^^^^^^^^^^^^^^^^^^

.. java:method:: public void setBackgroundColor(int color) throws DeviceException
   :outertype: SecondaryDisplayDevice

   设置客显设备背景颜色。

   :param color: 颜色值
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

