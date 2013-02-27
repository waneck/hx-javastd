package com.sun.jmx.snmp.defaults;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
//// java import
////
/**
* This class reads a file containing the property list defined for Java DMK
* and adds all the read properties to the list of system properties.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
*
* @since 1.5
*/
@:require(java5) extern class SnmpProperties
{
	/**
	* Reads the Java DMK property list from a file and
	* adds the read properties as system properties.
	*/
	@:overload public static function load(file : java.lang.String.String) : Void;
	
	/**
	* References the property that specifies the directory where
	* the native libraries will be stored before the MLet Service
	* loads them into memory.
	* <p>
	* Property Name: <B>jmx.mlet.library.dir</B>
	*/
	public static var MLET_LIB_DIR(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the ACL file
	* used by the SNMP protocol adaptor.
	* <p>
	* Property Name: <B>jdmk.acl.file</B>
	*/
	public static var ACL_FILE(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the Security file
	* used by the SNMP protocol adaptor.
	* <p>
	* Property Name: <B>jdmk.security.file</B>
	*/
	public static var SECURITY_FILE(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the User ACL file
	* used by the SNMP protocol adaptor.
	* <p>
	* Property Name: <B>jdmk.uacl.file</B>
	*/
	public static var UACL_FILE(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the default mib_core file
	* used by the mibgen compiler.
	* <p>
	* Property Name: <B>mibcore.file</B>
	*/
	public static var MIB_CORE_FILE(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the full name of the JMX
	* specification implemented by this product.
	* <p>
	* Property Name: <B>jmx.specification.name</B>
	*/
	public static var JMX_SPEC_NAME(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the version of the JMX
	* specification implemented by this product.
	* <p>
	* Property Name: <B>jmx.specification.version</B>
	*/
	public static var JMX_SPEC_VERSION(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the vendor of the JMX
	* specification implemented by this product.
	* <p>
	* Property Name: <B>jmx.specification.vendor</B>
	*/
	public static var JMX_SPEC_VENDOR(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the full name of this product
	* implementing the  JMX specification.
	* <p>
	* Property Name: <B>jmx.implementation.name</B>
	*/
	public static var JMX_IMPL_NAME(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the name of the vendor of this product
	* implementing the  JMX specification.
	* <p>
	* Property Name: <B>jmx.implementation.vendor</B>
	*/
	public static var JMX_IMPL_VENDOR(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the version of this product
	* implementing the  JMX specification.
	* <p>
	* Property Name: <B>jmx.implementation.version</B>
	*/
	public static var JMX_IMPL_VERSION(default, null) : java.lang.String.String;
	
	/**
	* References the property that specifies the SSL cipher suites to
	* be enabled by the HTTP/SSL connector.
	* <p>
	* Property Name: <B>jdmk.ssl.cipher.suite.</B>
	* <p>
	* The list of SSL cipher suites is specified in the format:
	* <p>
	* <DD><B>jdmk.ssl.cipher.suite.</B>&lt;n&gt;<B>=</B>&lt;cipher suite name&gt;</DD>
	* <p>
	* For example:
	* <p>
	* <DD>jdmk.ssl.cipher.suite.1=SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA</DD>
	* <DD>jdmk.ssl.cipher.suite.2=SSL_RSA_EXPORT_WITH_RC4_40_MD5</DD>
	* <DD>. . .</DD>
	*/
	public static var SSL_CIPHER_SUITE(default, null) : java.lang.String.String;
	
	
}