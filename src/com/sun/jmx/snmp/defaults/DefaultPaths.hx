package com.sun.jmx.snmp.defaults;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
* This class represents a set of default directories used by Java DMK.
*
* <p><b>This API is a Sun Microsystems internal API  and is subject
* to change without notice.</b></p>
* @since 1.5
*/
@:require(java5) extern class DefaultPaths
{
	/**
	* Returns the installation directory for Java DMK.
	*
	* The default value of the installation directory is:
	* <CODE>&lt;base_dir&gt; + File.separator + SUNWjdmk + File.separator + jdmk5.0 </CODE>
	*
	* @return Java DMK installation directory.
	*/
	@:overload public static function getInstallDir() : java.lang.String.String;
	
	/**
	* Returns the installation directory for Java DMK concatenated with dirname.
	*
	* The default value of the installation directory is:
	* <CODE>&lt;base_dir&gt; + File.separator + SUNWjdmk + File.separator + jdmk5.0 </CODE>
	*
	* @param dirname The directory to be appended.
	*
	* @return Java DMK installation directory + <CODE>File.separator</CODE> + <CODE>dirname</CODE>.
	*/
	@:overload public static function getInstallDir(dirname : java.lang.String.String) : java.lang.String.String;
	
	/**
	* Sets the installation directory for Java DMK.
	*
	* @param dirname The directory where Java DMK resides.
	*/
	@:overload public static function setInstallDir(dirname : java.lang.String.String) : Void;
	
	/**
	* Returns the <CODE>etc</CODE> directory for Java DMK.
	* <P>
	* The default value of the <CODE>etc</CODE> directory is:
	* <UL>
	* <LI><CODE>DefaultPaths.getInstallDir("etc")</CODE>.
	* </UL>
	*
	* @return Java DMK <CODE>etc</CODE> directory.
	*/
	@:overload public static function getEtcDir() : java.lang.String.String;
	
	/**
	* Returns the <CODE>etc</CODE> directory for Java DMK concatenated with dirname.
	* <P>
	* The default value of the <CODE>etc</CODE> directory is:
	* <UL>
	* <LI><CODE>DefaultPaths.getInstallDir("etc")</CODE>.
	* </UL>
	*
	* @param dirname The directory to be appended.
	*
	* @return Java DMK <CODE>etc</CODE> directory + <CODE>File.separator</CODE> + <CODE>dirname</CODE>.
	*/
	@:overload public static function getEtcDir(dirname : java.lang.String.String) : java.lang.String.String;
	
	/**
	* Sets the <CODE>etc</CODE> directory for Java DMK.
	*
	* @param dirname The <CODE>etc</CODE> directory for Java DMK.
	*/
	@:overload public static function setEtcDir(dirname : java.lang.String.String) : Void;
	
	/**
	* Returns the <CODE>tmp</CODE> directory for the product.
	* <P>
	* The default value of the <CODE>tmp</CODE> directory is:
	* <UL>
	* <LI><CODE>DefaultPaths.getInstallDir("tmp")</CODE>.
	* </UL>
	*
	* @return Java DMK <CODE>tmp</CODE> directory.
	*/
	@:overload public static function getTmpDir() : java.lang.String.String;
	
	/**
	* Returns the <CODE>tmp</CODE> directory for Java DMK concatenated with dirname.
	* <P>
	* The default value of the <CODE>tmp</CODE> directory is:
	* <UL>
	* <LI><CODE>DefaultPaths.getInstallDir("tmp")</CODE>.
	* </UL>
	*
	* @param dirname The directory to be appended.
	*
	* @return Java DMK <CODE>tmp</CODE> directory + <CODE>File.separator</CODE> + <CODE>dirname</CODE>.
	*/
	@:overload public static function getTmpDir(dirname : java.lang.String.String) : java.lang.String.String;
	
	/**
	* Sets the <CODE>tmp</CODE> directory for the product
	*
	* @param dirname The <CODE>tmp</CODE> directory for Java DMK.
	*/
	@:overload public static function setTmpDir(dirname : java.lang.String.String) : Void;
	
	
}
