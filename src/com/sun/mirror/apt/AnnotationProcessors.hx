package com.sun.mirror.apt;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* Utilities to create specialized annotation processors.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  There is no direct analog
* of the functionality of this class in the standardized API.
*
* @since 1.5
* @author Joseph D. Darcy
* @author Scott Seligman
*/
@:require(java5) extern class AnnotationProcessors
{
	/**
	*  An annotation processor that does nothing and has no state.
	*  May be used multiple times.
	*
	* @since 1.5
	*/
	@:require(java5) @:public @:final @:static public static var NO_OP(default, null) : com.sun.mirror.apt.AnnotationProcessor;
	
	/**
	* Constructs a new composite annotation processor.  A composite
	* annotation processor combines multiple annotation processors
	* into one and functions by invoking each of its component
	* processors' process methods in sequence.
	*
	* @param aps The processors to create a composite of
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getCompositeAnnotationProcessor(aps : java.NativeArray<com.sun.mirror.apt.AnnotationProcessor>) : com.sun.mirror.apt.AnnotationProcessor;
	
	/**
	* Constructs a new composite annotation processor.  A composite
	* annotation processor combines multiple annotation processors
	* into one and functions by invoking each of its component
	* processors' process methods in the sequence the processors are
	* returned by the collection's iterator.
	*
	* @param aps A collection of processors to create a composite of
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:static public static function getCompositeAnnotationProcessor(aps : java.util.Collection<com.sun.mirror.apt.AnnotationProcessor>) : com.sun.mirror.apt.AnnotationProcessor;
	
	
}
@:native('com$sun$mirror$apt$AnnotationProcessors$NoOpAP') @:internal extern class AnnotationProcessors_NoOpAP implements com.sun.mirror.apt.AnnotationProcessor
{
	@:overload @:public public function process() : Void;
	
	
}
/**
* Combines multiple annotation processors into a simple composite
* processor.
* The composite processor functions by invoking each of its component
* processors in sequence.
*/
@:native('com$sun$mirror$apt$AnnotationProcessors$CompositeAnnotationProcessor') @:internal extern class AnnotationProcessors_CompositeAnnotationProcessor implements com.sun.mirror.apt.AnnotationProcessor
{
	/**
	* Constructs a new composite annotation processor.
	* @param aps  the component annotation processors
	*/
	@:overload @:public public function new(aps : java.util.Collection<com.sun.mirror.apt.AnnotationProcessor>) : Void;
	
	/**
	* Constructs a new composite annotation processor.
	* @param aps  the component annotation processors
	*/
	@:overload @:public public function new(aps : java.NativeArray<com.sun.mirror.apt.AnnotationProcessor>) : Void;
	
	/**
	* Invokes the <tt>process</tt> method of each component processor,
	* in the order in which the processors were passed to the constructor.
	*/
	@:overload @:public public function process() : Void;
	
	
}
