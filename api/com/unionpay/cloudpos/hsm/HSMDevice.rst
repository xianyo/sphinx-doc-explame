.. java:import:: javax.security.auth.x500 X500Principal

.. java:import:: com.unionpay.cloudpos Device

.. java:import:: com.unionpay.cloudpos DeviceException

HSMDevice
=========

.. java:package:: com.unionpay.cloudpos.hsm
   :noindex:

.. java:type:: public interface HSMDevice extends Device

   安全模块存放终端所需要的各种证书，主要有四类：

   ..

   * 终端所有者证书（Terminal Owner Root Cert）：用于表明表示该终端属于哪个所有者，它是终端中其他根证书的签发人； 在导入其他根证书时可以用它来进行验证，包括更新终端所有者证书自己。
   * 应用根证书（App Root Cert）：由终端所有者证书签发；用于验证终端所有应用的根签名。向终端安装的apk都必须由该证书签发，或者该证书的子证书签发（子证书需要包含在apk中）。
   * 通讯根证书（SSL Comm Root Cert）：由终端所有者证书签发；用于在SSL连接时验证通讯服务器.
   * 终端公钥证书（Terminal Pub Key Cert）：终端内部私钥对应的公钥证书；由其他第三方CA颁发，用来提供给第三方服务端来确认终端身份。不属于truststore的范围，仅仅存放在安全模块中。

   安全模块中证书使用别名进行区分。主要提供以下功能：

   ..

   * 生成多组RSA公私钥对，至少2048位
   * 对外部提交的数据进行私钥运算，并返回结果
   * 产生真随机数
   * 证书管理
   * 加密解密

   硬件安全模块设备对象用来连接并使用硬件安全模块设备的功能。

   设备对象通过\ ``POSTerminal``\ 的对应方法获得，如下所示：

   .. parsed-literal::

      HSMDevice hsmDevice =
              (HSMDevice) POSTerminal.getInstance().getDevice("cloudpos.device.hsm");

   其中，"cloudpos.device.hsm"是标识安全模块设备的字符串，由具体的实现定义。 硬件安全模块设备是非独占设备，但写操作必须独占打开的设备。

   为了正常访问硬件安全模块设备，请在Android Manifest文件中设置硬件安全模块访问权限，具体如下所示：

   .. parsed-literal::

      <uses-permission android:name="android.permission.CLOUDPOS_SAFE_MODULE" />

   **See also:** :java:ref:`Device`

Fields
------
CERT_FORMAT_DER
^^^^^^^^^^^^^^^

.. java:field:: public static final int CERT_FORMAT_DER
   :outertype: HSMDevice

   DER格式

CERT_FORMAT_PEM
^^^^^^^^^^^^^^^

.. java:field:: public static final int CERT_FORMAT_PEM
   :outertype: HSMDevice

   PEM格式

CERT_TYPE_APP_ROOT
^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int CERT_TYPE_APP_ROOT
   :outertype: HSMDevice

   终端应用根证书。该证书用于验证所有应用签名的合法性。

CERT_TYPE_COMM_ROOT
^^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int CERT_TYPE_COMM_ROOT
   :outertype: HSMDevice

   终端SSL通讯根证书。该证书用于验证服务器的合法性。

CERT_TYPE_PUBLIC_KEY
^^^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int CERT_TYPE_PUBLIC_KEY
   :outertype: HSMDevice

   终端自己的公钥证书

CERT_TYPE_TERMINAL_OWNER
^^^^^^^^^^^^^^^^^^^^^^^^

.. java:field:: public static final int CERT_TYPE_TERMINAL_OWNER
   :outertype: HSMDevice

   终端所有者根证书

Methods
-------
decrypt
^^^^^^^

.. java:method::  byte[] decrypt(int algorithm, String aliasPrivateKey, byte[] bufCipher) throws DeviceException
   :outertype: HSMDevice

   使用终端私钥解密数据。解密结果默认使用PKCS1Padding。  该操作是非独占的。

   :param algorithm: 解密算法。
   :param aliasPrivateKey: 私钥别名。
   :param bufCipher: 解密数据密文 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 解密结果。

deleteCertificate
^^^^^^^^^^^^^^^^^

.. java:method::  boolean deleteCertificate(int certType, String alias) throws DeviceException
   :outertype: HSMDevice

   删除证书。通过证书类型及证书别名，可找到匹配的唯一一张证书删除。

   终端所有者证书和银联的应用根证书不能被删除。  该操作是独占的。

   :param certType: 证书类型。
   :param alias: 证书别名。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功。\ ``false``\  失败。

deleteKeyPair
^^^^^^^^^^^^^

.. java:method::  boolean deleteKeyPair(String aliasPrivateKey) throws DeviceException
   :outertype: HSMDevice

   删除终端私钥（密钥对）。  该操作是独占的。

   :param aliasPrivateKey: 私钥（密钥对）别名。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功。\ ``false``\  失败。

encrypt
^^^^^^^

.. java:method::  byte[] encrypt(int algorithm, String aliasPrivateKey, byte[] bufPlain) throws DeviceException
   :outertype: HSMDevice

   使用终端私钥加密数据。加密结果默认使用PKCS1Padding。  该操作是非独占的。

   :param algorithm: 加密算法。
   :param aliasPrivateKey: 私钥别名。
   :param bufPlain: 加密数据明文 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 加密结果。

generateCSR
^^^^^^^^^^^

.. java:method::  byte[] generateCSR(String aliasPrivateKey, X500Principal subject) throws DeviceException
   :outertype: HSMDevice

   生成终端公钥的证书签名请求CSR。  该操作是独占的。

   :param aliasPrivateKey: 私钥别名。
   :param subject: CSR中的主体名称等。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: PEM格式的CSR数据流。

generateKeyPair
^^^^^^^^^^^^^^^

.. java:method::  void generateKeyPair(String aliasPrivateKey, int algorithm, int keySize) throws DeviceException
   :outertype: HSMDevice

   让安全模块生成密钥对。  该操作是独占的。

   :param aliasPrivateKey: 需要生成的私钥（密钥对）的别名。
   :param algorithm: 密钥对支持的算法。
   :param keySize: 密钥长度，目前只支持2048位。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

generateRandom
^^^^^^^^^^^^^^

.. java:method::  byte[] generateRandom(int length) throws DeviceException
   :outertype: HSMDevice

   从安全模块返回真随机数。

   该操作是非独占的。

   :param length: 需要返回随机数的长度 < 64。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 包含随机数的数据流。

getCertificate
^^^^^^^^^^^^^^

.. java:method::  byte[] getCertificate(int certType, String alias, int dataFormat) throws DeviceException
   :outertype: HSMDevice

   返回证书数据。通过证书类型及证书别名，可返回找到匹配的唯一一张证书。  该操作是非独占的。

   :param certType: 证书类型。
   :param alias: 证书别名。
   :param dataFormat: 数据流格式，目前只支持\ :java:ref:`CERT_FORMAT_PEM`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 证书数据流 。

getFreeSpace
^^^^^^^^^^^^

.. java:method::  long getFreeSpace() throws DeviceException
   :outertype: HSMDevice

   返回硬件加密接口的剩余或可用空闲空间。  该操作是非独占的。

   :return: 空间大小单位为byte。

injectPublicKeyCertificate
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. java:method::  boolean injectPublicKeyCertificate(String alias, String aliasPrivateKey, byte[] bufCert, int dataFormat) throws DeviceException
   :outertype: HSMDevice

   注入终端公钥证书。

   终端公钥证书一般由终端产生CSR后，向CA提出证书申请，CA为终端签发的表明终端身份的证书。  该操作是独占的。

   :param alias: 证书的别名。
   :param aliasPrivateKey: 证书对应的私钥别名。
   :param bufCert: 证书数据流。
   :param dataFormat: 证书数据格式，目前只支持\ :java:ref:`CERT_FORMAT_PEM`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功。\ ``false``\  失败。

injectRootCertificate
^^^^^^^^^^^^^^^^^^^^^

.. java:method::  boolean injectRootCertificate(int certType, String alias, byte[] bufCert, int dataFormat) throws DeviceException
   :outertype: HSMDevice

   注入根证书接口。终端所有者证书，应用根证书和通讯根证书都是通过本方法注入。

   所有根证书必需由终端所有者根证书签发。而且证书的keyUsage必须符合下面规则：

   ..

   * \ :java:ref:`CERT_TYPE_TERMINAL_OWNER`\  终端所有者根证书的keyUsage标志：critical、KeyEncipherment、CertificateSign和CRLSign标识位必须被设置，其他标志不能设置。
   * \ :java:ref:`CERT_TYPE_APP_ROOT`\  终端应用根证书的keyUsage标志：critical、DigitalSignature、CertificateSign标识位必须被设置，其他标识位不能设置
   * \ :java:ref:`CERT_TYPE_COMM_ROOT`\  终端通讯根证书的keyUsage标志：DigitalSignature、KeyEncipherment和DataEncipherment标识位必须被设置，其他标识位不能设置。

   该操作是独占的。

   :param certType: 证书类型：\ :java:ref:`CERT_TYPE_TERMINAL_OWNER`\ , \ :java:ref:`CERT_TYPE_APP_ROOT`\  或者 \ :java:ref:`CERT_TYPE_COMM_ROOT`\ .
   :param alias: 证书别名。
   :param bufCert: 证书数据流。
   :param dataFormat: 数据流格式，目前只支持\ :java:ref:`CERT_FORMAT_PEM`\ 。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\  成功。\ ``false``\  失败。

isTampered
^^^^^^^^^^

.. java:method::  boolean isTampered() throws DeviceException
   :outertype: HSMDevice

   检查安全模块是否已经触发。 硬件安全模块有自动保护机制，如果发生对安全模块的攻击，会自动触发自毁并删除所有敏感信息。

   该操作是非独占的。

   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: \ ``true``\ 触发，\ ``false``\  未触发.

open
^^^^

.. java:method::  void open(int logicalID) throws DeviceException
   :outertype: HSMDevice

   打开某个逻辑ID的安全模块设备。

   安全模块设备是一种特殊的独占设备，一旦某个具有读写权限的应用打开本设备后，本设备不能再被其他具有读写权限的应用打开，但是本设备可以被多个具有只读权限的应用同时打开。

   :param logicalID: 安全模块逻辑ID。
   :throws DeviceException: 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。

queryCertificates
^^^^^^^^^^^^^^^^^

.. java:method::  String[] queryCertificates(int certType) throws DeviceException
   :outertype: HSMDevice

   从硬件证书管理与加密运算模块内查询证书。  该操作是非独占的。

   :param certType: 证书类型。
   :throws DeviceException: 查询失败 具体定义参考\ :java:ref:`DeviceException <DeviceException>`\ 的文档。
   :return: 证书别名数组。

