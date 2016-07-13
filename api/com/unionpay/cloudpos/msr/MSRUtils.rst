.. java:import:: android.content Context

.. java:import:: com.unionpay.cloudpos DeviceException

.. java:import:: com.unionpay.cloudpos POSTerminal

.. java:import:: com.unionpay.cloudpos TimeConstants

MSRUtils
========

.. java:package:: com.unionpay.cloudpos.msr
   :noindex:

.. java:type:: public class MSRUtils

   \ **MSRUtils**\

   集成了对磁条卡阅读器设备的使用，用户在不关心接口含义的情况下，可以调用waitForSwipe方法，然后继续刷卡操作就可以了。

Methods
-------
waitForSwipe
^^^^^^^^^^^^

.. java:method:: public MSROperationResult waitForSwipe(int timeout, Context context) throws DeviceException
   :outertype: MSRUtils

   在方法中先调用\ :java:ref:`open() <MSRDevice.open()>`\ ，然后调用\ :java:ref:`waitForSwipe(int) <MSRDevice.waitForSwipe(int)>`\  等待用户刷卡。

   只有当超时发生或者操作正常完成，本次调用才会返回。

   由于带有超时，本方法会响应\ :java:ref:`cancelRequest() <MSRDevice.cancelRequest()>`\ 方法。

   如果超时发生，会返回null，同时关闭该设备。 如果返回MSROperationResult，开发者后续自行关闭该设备。

   :param timeout: 最大等待时间，通过时间常量设定\ :java:ref:`SECOND <TimeConstants.SECOND>`\ ,\ :java:ref:`MilliSECOND <TimeConstants.MilliSECOND>`\ , \ :java:ref:`FOREVER <TimeConstants.FOREVER>`\ ,\ :java:ref:`IMMEDIATE <TimeConstants.IMMEDIATE>`\ 。
   :throws DeviceException。:
   :return: 操作结果。

