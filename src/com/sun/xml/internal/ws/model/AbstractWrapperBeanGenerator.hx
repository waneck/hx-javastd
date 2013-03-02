package com.sun.xml.internal.ws.model;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractWrapperBeanGenerator<T, C, M, A>
{
	@:overload private function new(annReader : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<T, C, Dynamic, M>, nav : com.sun.xml.internal.bind.v2.model.nav.Navigator<T, C, Dynamic, M>, factory : com.sun.xml.internal.ws.model.AbstractWrapperBeanGenerator.AbstractWrapperBeanGenerator_BeanMemberFactory<T, A>) : Void;
	
	@:overload @:abstract private function getSafeType(type : T) : T;
	
	/**
	* Returns Holder's value type.
	*
	* @return null if it not a Holder, otherwise return Holder's value type
	*/
	@:overload @:abstract private function getHolderValueType(type : T) : T;
	
	@:overload @:abstract private function isVoidType(type : T) : Bool;
	
	/**
	* Computes request bean members for a method. Collects all IN and INOUT
	* parameters as request bean fields. In this process, if a parameter
	* has any known JAXB annotations they are collected as well.
	* Special processing for @XmlElement annotation is done.
	*
	* @param method SEI method for which request bean members are computed
	* @return List of request bean members
	*/
	@:overload public function collectRequestBeanMembers(method : M) : java.util.List<A>;
	
	/**
	* Computes response bean members for a method. Collects all OUT and INOUT
	* parameters as response bean fields. In this process, if a parameter
	* has any known JAXB annotations they are collected as well.
	* Special processing for @XmlElement annotation is done.
	*
	* @param method SEI method for which response bean members are computed
	* @return List of response bean members
	*/
	@:overload public function collectResponseBeanMembers(method : M) : java.util.List<A>;
	
	/**
	* Computes and sorts exception bean members for a given exception as per
	* the 3.7 section of the spec. It takes all getter properties in the
	* exception and its superclasses(except getCause, getLocalizedMessage,
	* getStackTrace, getClass). The returned collection is sorted based
	* on the property names.
	*
	* <p>
	* But if the exception has @XmlType its values are honored. Only the
	* propOrder properties are considered. The returned collection is sorted
	* as per the given propOrder.
	*
	* @param exception
	* @return list of properties in the correct order for an exception bean
	*/
	@:overload public function collectExceptionBeanMembers(exception : C) : java.util.Collection<A>;
	
	
}
@:native('com$sun$xml$internal$ws$model$AbstractWrapperBeanGenerator$BeanMemberFactory') extern interface AbstractWrapperBeanGenerator_BeanMemberFactory<T, A>
{
	@:overload public function createWrapperBeanMember(paramType : T, paramName : String, jaxbAnnotations : java.util.List<java.lang.annotation.Annotation>) : A;
	
	
}
@:native('com$sun$xml$internal$ws$model$AbstractWrapperBeanGenerator$XmlElementHandler') @:internal extern class AbstractWrapperBeanGenerator_XmlElementHandler implements java.lang.reflect.InvocationHandler
{
	@:overload public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
