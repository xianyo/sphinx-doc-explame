��          �                      ,   :     g     u  %  }     �  E   �  �  �     �     �  O   �     �           .     J  �  g     �  ,        :     H  %  P     v  E   �  �  �     j
     o
  O   u
     �
      �
             4个blocksbuffer (16字节). 4个blocks中第一个的索引, 从0开始. 4字节数据 Methods Mifare UltraLight又称为MF0，遵守ISO14443A协议。 Mifare UltraLight的卡序列号有7个字节，没有密码，不需要验证，每个BLOCK只有4个字节，没有电子钱包功能. 适合一次性、不需要回收的低成本的电子票证、景区门票等场合的解决方案 MifareUltralightCard Mifare轻型协议每次总是写1个blocks, 减少EEPROM写周期。 Mifare轻型协议每次总是读4个blocks，以减少需要读取整个标签命令的数目.如果读到最后一个可读的blocks，标记将返回已被包装的前面的blocks Mifare轻型协议标记包含可读blocks从0x00到0x0F.所以读到blocks0x0E将返回到blocks0x0E, 0x0F, 0x00, 0x01. Mifare轻型协议 C标记包含可读blocks从0x00到0x2B.0x2A将返回到blocks0x2A, 0x2B, 0x00, 0x01. read write 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。 写一个blocks (4 bytes). 写入blocks的索引,从0开始 属于memory card的一种. 读出4个blocks (16字节). Project-Id-Version: Sphinx-doc 1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-13 18:05+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hans_CN
Language-Team: zh_Hans_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 4个blocksbuffer (16字节). 4个blocks中第一个的索引, 从0开始. 4字节数据 Methods Mifare UltraLight又称为MF0，遵守ISO14443A协议。 Mifare UltraLight的卡序列号有7个字节，没有密码，不需要验证，每个BLOCK只有4个字节，没有电子钱包功能. 适合一次性、不需要回收的低成本的电子票证、景区门票等场合的解决方案 MifareUltralightCard Mifare轻型协议每次总是写1个blocks, 减少EEPROM写周期。 Mifare轻型协议每次总是读4个blocks，以减少需要读取整个标签命令的数目.如果读到最后一个可读的blocks，标记将返回已被包装的前面的blocks Mifare轻型协议标记包含可读blocks从0x00到0x0F.所以读到blocks0x0E将返回到blocks0x0E, 0x0F, 0x00, 0x01. Mifare轻型协议 C标记包含可读blocks从0x00到0x2B.0x2A将返回到blocks0x2A, 0x2B, 0x00, 0x01. read write 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。 写一个blocks (4 bytes). 写入blocks的索引,从0开始 属于memory card的一种. 读出4个blocks (16字节). 