.. java:import:: com.unionpay.cloudpos DeviceException

Card
====

.. java:package:: com.unionpay.cloudpos.card
   :noindex:

.. java:type:: public interface Card

   \ **Card**\ 接口提供了一些卡片服务的通用的定义。

   通过这个接口，可以实现卡片和读卡设备之间的连接或断开操作，并且获得卡片的ATR，ID和状态等基本信息。

Fields
------
PROTOCOL_RFCARD_TYPE_A
^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int PROTOCOL_RFCARD_TYPE_A
   :outertype: Card

   ISO14443 TYPE A。

PROTOCOL_RFCARD_TYPE_B
^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int PROTOCOL_RFCARD_TYPE_B
   :outertype: Card

   ISO14443 TYPE B。

PROTOCOL_T_0
^^^^^^^^^^^^

.. java:field::  int PROTOCOL_T_0
   :outertype: Card

   异步半双工字符传输协议。

PROTOCOL_T_1
^^^^^^^^^^^^

.. java:field::  int PROTOCOL_T_1
   :outertype: Card

   异步半双工块传输协议。

PROTOCOL_UNKNOWN
^^^^^^^^^^^^^^^^

.. java:field::  int PROTOCOL_UNKNOWN
   :outertype: Card

   未知的协议。

STATUS_ABSENT
^^^^^^^^^^^^^

.. java:field:: public static final int STATUS_ABSENT
   :outertype: Card

   当前卡槽处于\ **removed**\ 状态。通过\ ``getCardStatus()``\ 方法返回。

STATUS_CONNECTED
^^^^^^^^^^^^^^^^

.. java:field:: public static final int STATUS_CONNECTED
   :outertype: Card

   当前卡槽处于\ **connected**\ 状态。通过\ ``getCardStatus()``\ 方法返回。

STATUS_DISCONNECTED
^^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int STATUS_DISCONNECTED
   :outertype: Card

   当前卡槽处于\ **disconnected**\ 状态。通过\ ``getCardStatus()``\ 方法返回。

Methods
-------
getCardStatus
^^^^^^^^^^^^^

.. java:method:: public int getCardStatus() throws DeviceException
   :outertype: Card

   返回卡操作结果对象的状态。

   :return: 结果

getID
^^^^^

.. java:method::  byte[] getID() throws DeviceException
   :outertype: Card

   返回卡片的ID。

   :return: 卡片ID的字节流

getProtocol
^^^^^^^^^^^

.. java:method::  int getProtocol() throws DeviceException
   :outertype: Card

   返回表达当前卡槽和卡片通讯协议的常量。

   本方法是个同步方法。当卡槽中有卡片存在，并且成功open,并得到了卡对象，可以被随时读取。

   :throws DeviceException: 参考\ :java:ref:`DeviceException <DeviceException>`\  中的定义，同时还包括:

   ..

   * BAD_CONTROL_MODE - 如果卡片没有open
   :return: 卡片通讯协议的常量：

   \ :java:ref:`PROTOCOL_RFCARD_TYPE_A`\  \ :java:ref:`PROTOCOL_RFCARD_TYPE_B`\   \ :java:ref:`PROTOCOL_T_0`\  \ :java:ref:`PROTOCOL_T_1`\  \ :java:ref:`PROTOCOL_UNKNOWN`\

