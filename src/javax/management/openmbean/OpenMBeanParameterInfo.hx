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
extern interface OpenMBeanParameterInfo
{
	/**
	* Returns a human readable description of the parameter
	* described by this <tt>OpenMBeanParameterInfo</tt> instance.
	*
	* @return the description.
	*/
	@:overload @:public public function getDescription() : String;
	
	/**
	* Returns the name of the parameter
	* described by this <tt>OpenMBeanParameterInfo</tt> instance.
	*
	* @return the name.
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the <i>open type</i> of the values of the parameter
	* described by this <tt>OpenMBeanParameterInfo</tt> instance.
	*
	* @return the open type.
	*/
	@:overload @:public public function getOpenType() : javax.management.openmbean.OpenType<Dynamic>;
	
	/**
	* Returns the default value for this parameter, if it has one, or
	* <tt>null</tt> otherwise.
	*
	* @return the default value.
	*/
	@:overload @:public public function getDefaultValue() : Dynamic;
	
	/**
	* Returns the set of legal values for this parameter, if it has
	* one, or <tt>null</tt> otherwise.
	*
	* @return the set of legal values.
	*/
	@:overload @:public public function getLegalValues() : java.util.Set<Dynamic>;
	
	/**
	* Returns the minimal value for this parameter, if it has one, or
	* <tt>null</tt> otherwise.
	*
	* @return the minimum value.
	*/
	@:overload @:public public function getMinValue() : java.lang.Comparable<Dynamic>;
	
	/**
	* Returns the maximal value for this parameter, if it has one, or
	* <tt>null</tt> otherwise.
	*
	* @return the maximum value.
	*/
	@:overload @:public public function getMaxValue() : java.lang.Comparable<Dynamic>;
	
	/**
	* Returns <tt>true</tt> if this parameter has a specified default
	* value, or <tt>false</tt> otherwise.
	*
	* @return true if there is a default value.
	*/
	@:overload @:public public function hasDefaultValue() : Bool;
	
	/**
	* Returns <tt>true</tt> if this parameter has a specified set of
	* legal values, or <tt>false</tt> otherwise.
	*
	* @return true if there is a set of legal values.
	*/
	@:overload @:public public function hasLegalValues() : Bool;
	
	/**
	* Returns <tt>true</tt> if this parameter has a specified minimal
	* value, or <tt>false</tt> otherwise.
	*
	* @return true if there is a minimum value.
	*/
	@:overload @:public public function hasMinValue() : Bool;
	
	/**
	* Returns <tt>true</tt> if this parameter has a specified maximal
	* value, or <tt>false</tt> otherwise.
	*
	* @return true if there is a maximum value.
	*/
	@:overload @:public public function hasMaxValue() : Bool;
	
	/**
	* Tests whether <var>obj</var> is a valid value for the parameter
	* described by this <code>OpenMBeanParameterInfo</code> instance.
	*
	* @param obj the object to be tested.
	*
	* @return <code>true</code> if <var>obj</var> is a valid value
	* for the parameter described by this
	* <code>OpenMBeanParameterInfo</code> instance,
	* <code>false</code> otherwise.
	*/
	@:overload @:public public function isValue(obj : Dynamic) : Bool;
	
	
}
