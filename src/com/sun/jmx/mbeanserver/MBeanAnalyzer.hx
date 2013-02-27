package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MBeanAnalyzer<M>
{
	
}
/**
* <p>An analyzer for a given MBean interface.  The analyzer can
* be for Standard MBeans or MXBeans, depending on the MBeanIntrospector
* passed at construction.
*
* <p>The analyzer can
* visit the attributes and operations of the interface, calling
* a caller-supplied visitor method for each one.</p>
*
* @param <M> Method or ConvertingMethod according as this is a
* Standard MBean or an MXBean.
*
* @since 1.6
*/
@:require(java6) @:native('com$sun$jmx$mbeanserver$MBeanAnalyzer$MBeanVisitor') @:internal extern interface MBeanAnalyzer_MBeanVisitor<M>
{
	@:overload public function visitAttribute(attributeName : String, getter : M, setter : M) : Void;
	
	@:overload public function visitOperation(operationName : String, operation : M) : Void;
	
	
}
@:native('com$sun$jmx$mbeanserver$MBeanAnalyzer$AttrMethods') @:internal extern class MBeanAnalyzer_AttrMethods<M>
{
	
}
/**
* A comparator that defines a total order so that methods have the
* same name and identical signatures appear next to each others.
* The methods are sorted in such a way that methods which
* override each other will sit next to each other, with the
* overridden method first - e.g. Object getFoo() is placed before
* Integer getFoo(). This makes it possible to determine whether
* a method overrides another one simply by looking at the method(s)
* that precedes it in the list. (see eliminateCovariantMethods).
**/
@:native('com$sun$jmx$mbeanserver$MBeanAnalyzer$MethodOrder') @:internal extern class MBeanAnalyzer_MethodOrder implements java.util.Comparator<java.lang.reflect.Method>
{
	@:overload public function compare(a : java.lang.reflect.Method, b : java.lang.reflect.Method) : Int;
	
	public static var instance(default, null) : MBeanAnalyzer_MethodOrder;
	
	
}
