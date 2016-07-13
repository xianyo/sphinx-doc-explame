.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

CashDrawerDevice
================

.. java:package:: com.unionpay.cloudpos.cashdrawer
   :noindex:

.. java:type:: public interface CashDrawerDevice extends Device

   \ **CashDrawerDevice**\ 定义了钱箱设备的接口。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      CashDrawerDevice cashDrawerDevice =
              (CashDrawerDevice) POSTerminal.getInstance().getDevice("cloudpos.device.cashdrawer");

   其中，"cloudpos.device.cashdrawer"是标识钱箱设备的字符串，由具体的实现定义。

   使用钱箱设备对象控制钱箱的弹开操作。

   为了正常访问钱箱设备，请在Android Manifest文件中设置钱箱访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_MONEYBOX" />

   **See also:** :java:ref:`Device`

Methods
-------
kickOut
^^^^^^^

.. java:method::  void kickOut() throws DeviceException
   :outertype: CashDrawerDevice

   弹出钱箱。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

   ..

   * 非法\ ``logicalID``\

open
^^^^

.. java:method::  void open(int logicalID) throws DeviceException
   :outertype: CashDrawerDevice

   打开某个逻辑ID的钱箱设备。

   :param logicalID: 钱箱设备逻辑ID。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

queryStatus
^^^^^^^^^^^

.. java:method::  int queryStatus() throws DeviceException
   :outertype: CashDrawerDevice

   返回钱箱状态。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``0``\  钱箱开启， \ ``1``\  钱箱关闭， \ ``-1``\  钱箱状态未知。

