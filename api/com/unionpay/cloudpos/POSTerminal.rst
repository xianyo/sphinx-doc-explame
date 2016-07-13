.. java:import:: java.io File

.. java:import:: dalvik.system DexClassLoader

.. java:import:: android.content Context

POSTerminal
===========

.. java:package:: com.unionpay.cloudpos
   :noindex:

.. java:type:: public abstract class POSTerminal

   设备管理器\ **POSTerminal**\  是获得每个设备的入口。

   获取该对象不能使用new方法，可以通过getInstance方法获得。

Fields
------
POS_TERMINAL_CLASS
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final String POS_TERMINAL_CLASS
   :outertype: POSTerminal

   系统属性

androidContext
^^^^^^^^^^^^^^

.. java:field:: protected static Context androidContext
   :outertype: POSTerminal

Methods
-------
getDevice
^^^^^^^^^

.. java:method:: public abstract Device getDevice(String deviceName)
   :outertype: POSTerminal

   返回设备对象。

   :param deviceName:
   :return: Device 设备对象

getDeviceSpec
^^^^^^^^^^^^^

.. java:method:: public abstract DeviceSpec getDeviceSpec(String deviceName)
   :outertype: POSTerminal

   返回设备详细描述

   :return: DeviceSpec 设备详细描述

getInstance
^^^^^^^^^^^

.. java:method:: public static synchronized POSTerminal getInstance(Context context)
   :outertype: POSTerminal

   返回设备管理器的实例对象。终端系统默认的className是：“com.unionpay.cloudpos.impl.POSTerminalImpl”

   可以通过System.setProperty(POSTerminal.POS_TERMINAL_CLASS, "com.unionpay.cloudpos.impl.POSTerminalImpl")设置系统属性。

   如果未设置，将取默认名称。

   :return: 设备管理器

getTerminalSpec
^^^^^^^^^^^^^^^

.. java:method:: public abstract TerminalSpec getTerminalSpec()
   :outertype: POSTerminal

   返回终端的详细描述。

   :return: TerminalSpec

   **See also:** :java:ref:`TerminalSpec`

isDeviceExist
^^^^^^^^^^^^^

.. java:method:: public abstract boolean isDeviceExist(String deviceName)
   :outertype: POSTerminal

   判断设备是否存在。

   :param deviceName:
   :return: boolean

listDevices
^^^^^^^^^^^

.. java:method:: public abstract String[] listDevices()
   :outertype: POSTerminal

   列出所有设备名称标识。

   :return: String[]

