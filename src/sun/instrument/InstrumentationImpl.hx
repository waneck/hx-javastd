package sun.instrument;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class InstrumentationImpl implements java.lang.instrument.Instrumentation
{
	@:overload public function addTransformer(transformer : java.lang.instrument.ClassFileTransformer) : Void;
	
	@:overload @:synchronized public function addTransformer(transformer : java.lang.instrument.ClassFileTransformer, canRetransform : Bool) : Void;
	
	@:overload @:synchronized public function removeTransformer(transformer : java.lang.instrument.ClassFileTransformer) : Bool;
	
	@:overload public function isModifiableClass(theClass : Class<Dynamic>) : Bool;
	
	@:overload public function isRetransformClassesSupported() : Bool;
	
	@:overload public function retransformClasses(classes : java.NativeArray<Class<Dynamic>>) : Void;
	
	@:overload public function isRedefineClassesSupported() : Bool;
	
	@:overload public function redefineClasses(definitions : java.NativeArray<java.lang.instrument.ClassDefinition>) : Void;
	
	@:overload public function getAllLoadedClasses() : java.NativeArray<Class<Dynamic>>;
	
	@:overload public function getInitiatedClasses(loader : java.lang.ClassLoader) : java.NativeArray<Class<Dynamic>>;
	
	@:overload public function getObjectSize(objectToSize : Dynamic) : haxe.Int64;
	
	@:overload public function appendToBootstrapClassLoaderSearch(jarfile : java.util.jar.JarFile) : Void;
	
	@:overload public function appendToSystemClassLoaderSearch(jarfile : java.util.jar.JarFile) : Void;
	
	@:overload public function isNativeMethodPrefixSupported() : Bool;
	
	@:overload @:synchronized public function setNativeMethodPrefix(transformer : java.lang.instrument.ClassFileTransformer, prefix : String) : Void;
	
	
}
