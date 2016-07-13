.. java:import:: com.unionpay.cloudpos DeviceException

MifareUltralightCard
====================

.. java:package:: com.unionpay.cloudpos.card
   :noindex:

.. java:type:: public interface MifareUltralightCard extends MemoryCard

   Mifare UltraLight又称为MF0，遵守ISO14443A协议。 Mifare UltraLight的卡序列号有7个字节，没有密码，不需要验证，每个BLOCK只有4个字节，没有电子钱包功能. 适合一次性、不需要回收的低成本的电子票证、景区门票等场合的解决方案

   属于memory card的一种.

Methods
-------
read
^^^^

.. java:method::  byte[] read(int blockIndex) throws DeviceException
   :outertype: MifareUltralightCard

   读出4个blocks (16字节).

   Mifare轻型协议每次总是读4个blocks，以减少需要读取整个标签命令的数目.如果读到最后一个可读的blocks，标记将返回已被包装的前面的blocks Mifare轻型协议标记包含可读blocks从0x00到0x0F.所以读到blocks0x0E将返回到blocks0x0E, 0x0F, 0x00, 0x01. Mifare轻型协议 C标记包含可读blocks从0x00到0x2B.0x2A将返回到blocks0x2A, 0x2B, 0x00, 0x01.

   :param blockIndex: 4个blocks中第一个的索引, 从0开始.
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 4个blocksbuffer (16字节).

write
^^^^^

.. java:method::  void write(int blockIndex, byte[] data) throws DeviceException
   :outertype: MifareUltralightCard

   写一个blocks (4 bytes).

   Mifare轻型协议每次总是写1个blocks, 减少EEPROM写周期。

   :param blockIndex: 写入blocks的索引,从0开始
   :param data: 4字节数据
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

