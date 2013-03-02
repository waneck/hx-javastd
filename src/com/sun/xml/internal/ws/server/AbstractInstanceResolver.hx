package com.sun.xml.internal.ws.server;
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
@:internal extern class AbstractInstanceResolver<T> extends com.sun.xml.internal.ws.api.server.InstanceResolver<T>
{
	@:overload private static function getResourceInjector(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : com.sun.xml.internal.ws.api.server.ResourceInjector;
	
	/**
	* Helper for invoking a method with elevated privilege.
	*/
	@:overload private static function invokeMethod(method : java.lang.reflect.Method, instance : Dynamic, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Finds the method that has the given annotation, while making sure that
	* there's only at most one such method.
	*/
	@:overload @:final private function findAnnotatedMethod(clazz : Class<Dynamic>, annType : Class<java.lang.annotation.Annotation>) : java.lang.reflect.Method;
	
	/**
	* Creates an {@link InjectionPlan} that injects the given resource type to the given class.
	*
	* @param isStatic
	*      Only look for static field/method
	*
	*/
	@:overload private static function buildInjectionPlan<T, R>(clazz : Class<T>, resourceType : Class<R>, isStatic : Bool) : com.sun.xml.internal.ws.server.AbstractInstanceResolver.AbstractInstanceResolver_InjectionPlan<T, R>;
	
	
}
/**
* Encapsulates which field/method the injection is done,
* and performs the injection.
*/
@:native('com$sun$xml$internal$ws$server$AbstractInstanceResolver$InjectionPlan') extern interface AbstractInstanceResolver_InjectionPlan<T, R>
{
	@:overload public function inject(instance : T, resource : R) : Void;
	
	/**
	* Gets the number of injections to be performed.
	*/
	@:overload public function count() : Int;
	
	
}
/**
* Injects to a field.
*/
@:native('com$sun$xml$internal$ws$server$AbstractInstanceResolver$FieldInjectionPlan') extern class AbstractInstanceResolver_FieldInjectionPlan<T, R> implements com.sun.xml.internal.ws.server.AbstractInstanceResolver.AbstractInstanceResolver_InjectionPlan<T, R>
{
	@:overload public function new(field : java.lang.reflect.Field) : Void;
	
	@:overload public function inject(instance : T, resource : R) : Void;
	
	@:overload public function count() : Int;
	
	
}
/**
* Injects to a method.
*/
@:native('com$sun$xml$internal$ws$server$AbstractInstanceResolver$MethodInjectionPlan') extern class AbstractInstanceResolver_MethodInjectionPlan<T, R> implements com.sun.xml.internal.ws.server.AbstractInstanceResolver.AbstractInstanceResolver_InjectionPlan<T, R>
{
	@:overload public function new(method : java.lang.reflect.Method) : Void;
	
	@:overload public function inject(instance : T, resource : R) : Void;
	
	@:overload public function count() : Int;
	
	
}
/**
* Combines multiple {@link InjectionPlan}s into one.
*/
@:native('com$sun$xml$internal$ws$server$AbstractInstanceResolver$Compositor') @:internal extern class AbstractInstanceResolver_Compositor<T, R> implements com.sun.xml.internal.ws.server.AbstractInstanceResolver.AbstractInstanceResolver_InjectionPlan<T, R>
{
	@:overload public function new(children : java.util.Collection<com.sun.xml.internal.ws.server.AbstractInstanceResolver.AbstractInstanceResolver_InjectionPlan<T, R>>) : Void;
	
	@:overload public function inject(instance : T, res : R) : Void;
	
	@:overload public function count() : Int;
	
	
}
