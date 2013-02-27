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
extern interface OpenMBeanOperationInfo
{
	/**
	* Returns a human readable description of the operation
	* described by this <tt>OpenMBeanOperationInfo</tt> instance.
	*
	* @return the description.
	*/
	@:overload public function getDescription() : String;
	
	/**
	* Returns the name of the operation
	* described by this <tt>OpenMBeanOperationInfo</tt> instance.
	*
	* @return the name.
	*/
	@:overload public function getName() : String;
	
	/**
	* Returns an array of <tt>OpenMBeanParameterInfo</tt> instances
	* describing each parameter in the signature of the operation
	* described by this <tt>OpenMBeanOperationInfo</tt> instance.
	* Each instance in the returned array should actually be a
	* subclass of <tt>MBeanParameterInfo</tt> which implements the
	* <tt>OpenMBeanParameterInfo</tt> interface (typically {@link
	* OpenMBeanParameterInfoSupport}).
	*
	* @return the signature.
	*/
	@:overload public function getSignature() : java.NativeArray<javax.management.MBeanParameterInfo>;
	
	/**
	* Returns an <tt>int</tt> constant qualifying the impact of the
	* operation described by this <tt>OpenMBeanOperationInfo</tt>
	* instance.
	*
	* The returned constant is one of {@link
	* javax.management.MBeanOperationInfo#INFO}, {@link
	* javax.management.MBeanOperationInfo#ACTION}, {@link
	* javax.management.MBeanOperationInfo#ACTION_INFO}, or {@link
	* javax.management.MBeanOperationInfo#UNKNOWN}.
	*
	* @return the impact code.
	*/
	@:overload public function getImpact() : Int;
	
	/**
	* Returns the fully qualified Java class name of the values
	* returned by the operation described by this
	* <tt>OpenMBeanOperationInfo</tt> instance.  This method should
	* return the same value as a call to
	* <tt>getReturnOpenType().getClassName()</tt>.
	*
	* @return the return type.
	*/
	@:overload public function getReturnType() : String;
	
	/**
	* Returns the <i>open type</i> of the values returned by the
	* operation described by this <tt>OpenMBeanOperationInfo</tt>
	* instance.
	*
	* @return the return type.
	*/
	@:overload public function getReturnOpenType() : javax.management.openmbean.OpenType<Dynamic>;
	
	
}
