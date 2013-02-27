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
extern class WrapperBeanGenerator
{
	
}
@:native('com$sun$xml$internal$ws$model$WrapperBeanGenerator$RuntimeWrapperBeanGenerator') @:internal extern class WrapperBeanGenerator_RuntimeWrapperBeanGenerator extends com.sun.xml.internal.ws.model.AbstractWrapperBeanGenerator<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Method, WrapperBeanGenerator_Field>
{
	@:overload private function new(annReader : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<java.lang.reflect.Type, Class<Dynamic>, Dynamic, java.lang.reflect.Method>, nav : com.sun.xml.internal.bind.v2.model.nav.Navigator<java.lang.reflect.Type, Class<Dynamic>, Dynamic, java.lang.reflect.Method>, beanMemberFactory : com.sun.xml.internal.ws.model.AbstractWrapperBeanGenerator.AbstractWrapperBeanGenerator_BeanMemberFactory<java.lang.reflect.Type, WrapperBeanGenerator_Field>) : Void;
	
	@:overload private function getSafeType(type : java.lang.reflect.Type) : java.lang.reflect.Type;
	
	@:overload private function getHolderValueType(paramType : java.lang.reflect.Type) : java.lang.reflect.Type;
	
	@:overload private function isVoidType(type : java.lang.reflect.Type) : Bool;
	
	
}
@:native('com$sun$xml$internal$ws$model$WrapperBeanGenerator$FieldFactory') @:internal extern class WrapperBeanGenerator_FieldFactory implements com.sun.xml.internal.ws.model.AbstractWrapperBeanGenerator.AbstractWrapperBeanGenerator_BeanMemberFactory<java.lang.reflect.Type, WrapperBeanGenerator_Field>
{
	@:overload public function createWrapperBeanMember(paramType : java.lang.reflect.Type, paramName : String, jaxb : java.util.List<java.lang.annotation.Annotation>) : WrapperBeanGenerator_Field;
	
	
}
@:native('com$sun$xml$internal$ws$model$WrapperBeanGenerator$Field') @:internal extern class WrapperBeanGenerator_Field implements java.lang.Comparable<WrapperBeanGenerator_Field>
{
	@:overload public function compareTo(o : WrapperBeanGenerator_Field) : Int;
	
	
}
