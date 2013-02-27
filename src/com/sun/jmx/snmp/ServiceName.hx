package com.sun.jmx.snmp;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
/**
* Used for storing default values used by SNMP Runtime services.
* <p><b>This API is an Oracle Corporation internal API  and is subject
* to change without notice.</b></p>
*/
extern class ServiceName
{
	/**
	* The object name of the MBeanServer delegate object
	* <BR>
	* The value is <CODE>JMImplementation:type=MBeanServerDelegate</CODE>.
	*/
	public static var DELEGATE(default, null) : java.lang.String.String;
	
	/**
	* The default key properties for registering the class loader of the MLet service.
	* <BR>
	* The value is <CODE>type=MLet</CODE>.
	*/
	public static var MLET(default, null) : java.lang.String.String;
	
	/**
	* The default domain.
	* <BR>
	* The value is <CODE>DefaultDomain</CODE>.
	*/
	public static var DOMAIN(default, null) : java.lang.String.String;
	
	/**
	* The default port for the RMI connector.
	* <BR>
	* The value is <CODE>1099</CODE>.
	*/
	public static var RMI_CONNECTOR_PORT(default, null) : Int;
	
	/**
	* The default key properties for the RMI connector.
	* <BR>
	* The value is <CODE>name=RmiConnectorServer</CODE>.
	*/
	public static var RMI_CONNECTOR_SERVER(default, null) : java.lang.String.String;
	
	/**
	* The default port for the SNMP adaptor.
	* <BR>
	* The value is <CODE>161</CODE>.
	*/
	public static var SNMP_ADAPTOR_PORT(default, null) : Int;
	
	/**
	* The default key properties for the SNMP protocol adaptor.
	* <BR>
	* The value is <CODE>name=SnmpAdaptorServer</CODE>.
	*/
	public static var SNMP_ADAPTOR_SERVER(default, null) : java.lang.String.String;
	
	/**
	* The default port for the HTTP connector.
	* <BR>
	* The value is <CODE>8081</CODE>.
	*/
	public static var HTTP_CONNECTOR_PORT(default, null) : Int;
	
	/**
	* The default key properties for the HTTP connector.
	* <BR>
	* The value is <CODE>name=HttpConnectorServer</CODE>.
	*/
	public static var HTTP_CONNECTOR_SERVER(default, null) : java.lang.String.String;
	
	/**
	* The default port for the HTTPS connector.
	* <BR>
	* The value is <CODE>8084</CODE>.
	*/
	public static var HTTPS_CONNECTOR_PORT(default, null) : Int;
	
	/**
	* The default key properties for the HTTPS connector.
	* <BR>
	* The value is <CODE>name=HttpsConnectorServer</CODE>.
	*/
	public static var HTTPS_CONNECTOR_SERVER(default, null) : java.lang.String.String;
	
	/**
	* The default port for the HTML adaptor.
	* <BR>
	* The value is <CODE>8082</CODE>.
	*/
	public static var HTML_ADAPTOR_PORT(default, null) : Int;
	
	/**
	* The default key properties for the HTML protocol adaptor.
	* <BR>
	* The value is <CODE>name=HtmlAdaptorServer</CODE>.
	*/
	public static var HTML_ADAPTOR_SERVER(default, null) : java.lang.String.String;
	
	/**
	* The name of the JMX specification implemented by this product.
	* <BR>
	* The value is <CODE>Java Management Extensions</CODE>.
	*/
	public static var JMX_SPEC_NAME(default, null) : java.lang.String.String;
	
	/**
	* The version of the JMX specification implemented by this product.
	* <BR>
	* The value is <CODE>1.0 Final Release</CODE>.
	*/
	public static var JMX_SPEC_VERSION(default, null) : java.lang.String.String;
	
	/**
	* The vendor of the JMX specification implemented by this product.
	* <BR>
	* The value is <CODE>Oracle Corporation</CODE>.
	*/
	public static var JMX_SPEC_VENDOR(default, null) : java.lang.String.String;
	
	/**
	* The name of the vendor of this product implementing the  JMX specification.
	* <BR>
	* The value is <CODE>Oracle Corporation</CODE>.
	*/
	public static var JMX_IMPL_VENDOR(default, null) : java.lang.String.String;
	
	/**
	* The build number of the current product version, of the form <CODE>rXX</CODE>.
	*/
	public static var BUILD_NUMBER(default, null) : java.lang.String.String;
	
	/**
	* The version of this product implementing the  JMX specification.
	* <BR>
	* The value is <CODE>5.1_rXX</CODE>, where <CODE>rXX</CODE> is the <CODE>BUILD_NUMBER</CODE> .
	*/
	public static var JMX_IMPL_VERSION(default, null) : java.lang.String.String;
	
	
}
