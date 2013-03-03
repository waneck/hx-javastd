package javax.management.openmbean;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
//// jmx import
////
/**
* <p>Describes an attribute of an open MBean.</p>
*
* <p>This interface declares the same methods as the class {@link
* javax.management.MBeanAttributeInfo}.  A class implementing this
* interface (typically {@link OpenMBeanAttributeInfoSupport}) should
* extend {@link javax.management.MBeanAttributeInfo}.</p>
*
*
* @since 1.5
*/
@:require(java5) extern interface OpenMBeanAttributeInfo extends javax.management.openmbean.OpenMBeanParameterInfo
{
	/**
	* Returns <tt>true</tt> if the attribute described by this <tt>OpenMBeanAttributeInfo</tt> instance is readable,
	* <tt>false</tt> otherwise.
	*
	* @return true if the attribute is readable.
	*/
	@:overload @:public public function isReadable() : Bool;
	
	/**
	* Returns <tt>true</tt> if the attribute described by this <tt>OpenMBeanAttributeInfo</tt> instance is writable,
	* <tt>false</tt> otherwise.
	*
	* @return true if the attribute is writable.
	*/
	@:overload @:public public function isWritable() : Bool;
	
	/**
	* Returns <tt>true</tt> if the attribute described by this <tt>OpenMBeanAttributeInfo</tt> instance
	* is accessed through a <tt>is<i>XXX</i></tt> getter (applies only to <tt>boolean</tt> and <tt>Boolean</tt> values),
	* <tt>false</tt> otherwise.
	*
	* @return true if the attribute is accessed through <tt>is<i>XXX</i></tt>.
	*/
	@:overload @:public public function isIs() : Bool;
	
	
}
