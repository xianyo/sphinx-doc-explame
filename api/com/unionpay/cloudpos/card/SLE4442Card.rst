.. java:import:: com.unionpay.cloudpos DeviceException

SLE4442Card
===========

.. java:package:: com.unionpay.cloudpos.card
   :noindex:

.. java:type:: public interface SLE4442Card extends MemoryCard

   接触式IC卡的一种。有三项安全机制用户密码，唯一代码， 固化写入。密码若未核对正确，则无法写入数据。写入的数据一经写保护则无法再更改， 采用唯一代码作为系统所使用IC卡的标识，可避免相同型号的假冒卡闯入系统。 属于memory card的一种.

Fields
------
MEMORY_CARD_AREA_MAIN
^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int MEMORY_CARD_AREA_MAIN
   :outertype: SLE4442Card

   Memory卡的主数据区

MEMORY_CARD_AREA_PROTECTED
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int MEMORY_CARD_AREA_PROTECTED
   :outertype: SLE4442Card

   Memory卡的厂商数据库，只读。

MEMORY_CARD_AREA_SECURITY
^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:field::  int MEMORY_CARD_AREA_SECURITY
   :outertype: SLE4442Card

   Memory卡的安全数据库。

Methods
-------
connect
^^^^^^^

.. java:method::  ATR connect() throws DeviceException
   :outertype: SLE4442Card

   连接卡片，并返回卡片的ATR信息。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档：
   :return: 卡片的ATR信息

disconnect
^^^^^^^^^^

.. java:method::  void disconnect() throws DeviceException
   :outertype: SLE4442Card

   断开卡片。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档：

read
^^^^

.. java:method::  byte[] read(int area, int address, int length) throws DeviceException
   :outertype: SLE4442Card

   读取内存卡的数据。

   :param area: 读取的区域标志，包括以下常量：

   \ :java:ref:`MEMORY_CARD_AREA_MAIN`\  \ :java:ref:`MEMORY_CARD_AREA_PROTECTED`\   \ :java:ref:`MEMORY_CARD_AREA_SECURITY`\
   :param address: 地址，由0开始。
   :param length: 读取数据的长度
   :throws Exception: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 读取数据的内容，长度为length指定长度。

verify
^^^^^^

.. java:method::  boolean verify(byte[] key) throws DeviceException
   :outertype: SLE4442Card

   使用给定的密钥，验证memory卡。

   :param key:
   :throws Exception: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功,\ ``false``\  失败。

write
^^^^^

.. java:method::  void write(int area, int address, byte[] data) throws DeviceException
   :outertype: SLE4442Card

   向内存卡写入数据。

   :param area: 目标的区域标志，包括以下常量：

   \ :java:ref:`MEMORY_CARD_AREA_MAIN`\  \ :java:ref:`MEMORY_CARD_AREA_PROTECTED`\   \ :java:ref:`MEMORY_CARD_AREA_SECURITY`\
   :param address: 地址，由0开始。
   :param data: 写入的数据
   :throws Exception: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

