��          �               \  y   ]     �     �  �   �  L   �                
        (  O   1     �  0   �  7   �  @   �  T   >     �  -   �  ~   �  �  P  y   �     S     a  �   i  L   0	    }	     �
     �
  
   �
     �
  O   �
     �
  0     7   A  @   y  T   �       -     ~   M   APDU--ApplicationProtocolDataUnit--应用协议数据单元,是智能卡与智能卡读卡器之间传送的信息单元. APDU数据流 CPUCard CPU卡既有接触式也有非接触式的，接触式CPU卡主要采用两种通讯协议：T=0和T=1通讯协议。T=0是异步半双工字符传输协议，T=1是异步半双工块传输协议。 CPU卡的接口，通过APDU命令和智能卡读卡器之间传递信息。 CPU智能卡，是IC卡的一种，内有微处理器CPU、存储单元（包括随机存储器RAM、程序存储器ROM（FLASH）、用户数据存储器EEPROM）以及芯片操作系统COS， 通常CPU卡内含有随机数发生器，硬件DES，3DES加密算法。 Methods connect disconnect transmit 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档： 卡片的ATR信息 在CPU卡和CPU卡读卡器之间传递信息。 如果\ ``buffer``\ 为空 :return: 返回的APDU数据 如果与读卡器之间断开连接，不能执行APDU命令。 如果在发送命令前，需要选卡、唤醒等操作，由底层自动实现。 断开卡片。 连接卡片，并返回卡片的ATR信息。 通过接触式设备SmartCardReaderDevice对象或非接触式设备RFCardReaderDevice对象都有可能得到CPU卡对象。 Project-Id-Version: Sphinx-doc 1.0
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
 APDU--ApplicationProtocolDataUnit--应用协议数据单元,是智能卡与智能卡读卡器之间传送的信息单元. APDU数据流 CPUCard CPU卡既有接触式也有非接触式的，接触式CPU卡主要采用两种通讯协议：T=0和T=1通讯协议。T=0是异步半双工字符传输协议，T=1是异步半双工块传输协议。 CPU卡的接口，通过APDU命令和智能卡读卡器之间传递信息。 CPU智能卡，是IC卡的一种，内有微处理器CPU、存储单元（包括随机存储器RAM、程序存储器ROM（FLASH）、用户数据存储器EEPROM）以及芯片操作系统COS， 通常CPU卡内含有随机数发生器，硬件DES，3DES加密算法。 Methods connect disconnect transmit 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档： 卡片的ATR信息 在CPU卡和CPU卡读卡器之间传递信息。 如果\ ``buffer``\ 为空 :return: 返回的APDU数据 如果与读卡器之间断开连接，不能执行APDU命令。 如果在发送命令前，需要选卡、唤醒等操作，由底层自动实现。 断开卡片。 连接卡片，并返回卡片的ATR信息。 通过接触式设备SmartCardReaderDevice对象或非接触式设备RFCardReaderDevice对象都有可能得到CPU卡对象。 