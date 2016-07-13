.. java:import:: com.unionpay.cloudpos DeviceException

MifareCard
==========

.. java:package:: com.unionpay.cloudpos.card
   :noindex:

.. java:type:: public interface MifareCard extends MemoryCard

   非接触式Mifare卡的接口定义。符合MIFAREI国际标准，是memory卡的一种。

Methods
-------
decreaseValue
^^^^^^^^^^^^^

.. java:method::  boolean decreaseValue(int sectorIndex, int blockOfSector, int value) throws DeviceException
   :outertype: MifareCard

   设置电子钱包的数据值，做减法。

   :param sectorIndex: 分区号.
   :param blockOfSector: block索引号.
   :param value: 钱包数据，减去值.
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功，\ ``false``\  失败.

increaseValue
^^^^^^^^^^^^^

.. java:method::  boolean increaseValue(int sectorIndex, int blockOfSector, int value) throws DeviceException
   :outertype: MifareCard

   设置电子钱包的数据值，做加法。

   :param sectorIndex: 分区号.
   :param blockOfSector: block索引号.
   :param value: 钱包数据，加值.
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功，\ ``false``\  失败.

readBlock
^^^^^^^^^

.. java:method::  byte[] readBlock(int sectorIndex, int blockOfSector) throws DeviceException
   :outertype: MifareCard

   读取分区中某个block的数据。

   :param sectorIndex: 分区ID。
   :param blockOfSector: block索引号。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: block的数据。

readValue
^^^^^^^^^

.. java:method::  MoneyValue readValue(int sectorIndex, int blockOfSector) throws DeviceException
   :outertype: MifareCard

   从电子钱包中读取钱包数据和用户数据。

   :param sectorIndex: 分区号。
   :param blockOfSector: block索引号。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 钱包数据及用户数据 。

verifyKeyA
^^^^^^^^^^

.. java:method::  boolean verifyKeyA(int sectorIndex, byte[] key) throws DeviceException
   :outertype: MifareCard

   验证给定分区的Key A。

   无论验证失败还是成功，前面卡片被打开的分区均会被关闭。

   :param sectorIndex: Mifare卡的分区号。
   :param key: 6个字节的key。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功，\ ``false``\  失败。

verifyKeyB
^^^^^^^^^^

.. java:method::  boolean verifyKeyB(int sectorIndex, byte[] key) throws DeviceException
   :outertype: MifareCard

   验证给定分区的Key B。

   无论验证失败还是成功，前面卡片被打开的分区均会被关闭。

   :param sectorIndex: Mifare卡的分区号。
   :param key: 6个字节的key。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功，\ ``false``\  失败。

writeBlock
^^^^^^^^^^

.. java:method::  void writeBlock(int sectorIndex, int blockOfSector, byte[] buffer) throws DeviceException
   :outertype: MifareCard

   写某个分区的某个block。

   :param sectorIndex: 分区号。
   :param blockOfSector: block索引号。
   :param buffer: 数据流。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

writeValue
^^^^^^^^^^

.. java:method::  void writeValue(int sectorIndex, int blockOfSector, MoneyValue value) throws DeviceException
   :outertype: MifareCard

   往电子钱包里面写入钱包数据和用户数据。

   :param sectorIndex: 分区号。
   :param blockOfSector: block索引号。
   :param value: 钱包数据及用户数据.
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

