��          �               L      M     n       9   �  T   �               #  p   /  6   �  d   �  O   <     �  &   �  L   �          &     >  �  U      �     �       9     T   R     �     �     �  p   �  6   1  d   h  O   �       &   -  L   T     �     �     �   **See also:** :java:ref:`Device` CashDrawerDevice Methods \ **CashDrawerDevice**\ 定义了钱箱设备的接口。 \ ``0``\  钱箱开启， \ ``1``\  钱箱关闭， \ ``-1``\  钱箱状态未知。 kickOut open queryStatus 为了正常访问钱箱设备，请在Android Manifest文件中设置钱箱访问权限，具体如下所示： 使用钱箱设备对象控制钱箱的弹开操作。 其中，"cloudpos.device.cashdrawer"是标识钱箱设备的字符串，由具体的实现定义。 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。 弹出钱箱。 打开某个逻辑ID的钱箱设备。 设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示： 返回钱箱状态。 钱箱设备逻辑ID。 非法\ ``logicalID``\ Project-Id-Version: Sphinx-doc 1.0
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
 **See also:** :java:ref:`Device` CashDrawerDevice Methods \ **CashDrawerDevice**\ 定义了钱箱设备的接口。 \ ``0``\  钱箱开启， \ ``1``\  钱箱关闭， \ ``-1``\  钱箱状态未知。 kickOut open queryStatus 为了正常访问钱箱设备，请在Android Manifest文件中设置钱箱访问权限，具体如下所示： 使用钱箱设备对象控制钱箱的弹开操作。 其中，"cloudpos.device.cashdrawer"是标识钱箱设备的字符串，由具体的实现定义。 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。 弹出钱箱。 打开某个逻辑ID的钱箱设备。 设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示： 返回钱箱状态。 钱箱设备逻辑ID。 非法\ ``logicalID``\ 