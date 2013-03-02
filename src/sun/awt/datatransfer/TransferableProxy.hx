package sun.awt.datatransfer;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class TransferableProxy implements java.awt.datatransfer.Transferable
{
	/**
	* Proxies for another Transferable so that Serializable objects are never
	* returned directly by DnD or the Clipboard. Instead, a new instance of the
	* object is returned.
	*
	* @author Lawrence P.G. Cable
	* @author David Mendenhall
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public function new(t : java.awt.datatransfer.Transferable, local : Bool) : Void;
	
	@:overload public function getTransferDataFlavors() : java.NativeArray<java.awt.datatransfer.DataFlavor>;
	
	@:overload public function isDataFlavorSupported(flavor : java.awt.datatransfer.DataFlavor) : Bool;
	
	@:overload public function getTransferData(df : java.awt.datatransfer.DataFlavor) : Dynamic;
	
	private var transferable(default, null) : java.awt.datatransfer.Transferable;
	
	private var isLocal(default, null) : Bool;
	
	
}
@:internal extern class ClassLoaderObjectOutputStream extends java.io.ObjectOutputStream
{
	@:overload public function new(os : java.io.OutputStream) : Void;
	
	@:overload private function annotateClass(cl : Class<Dynamic>) : Void;
	
	@:overload private function annotateProxyClass(cl : Class<Dynamic>) : Void;
	
	@:overload public function getClassLoaderMap() : java.util.Map<java.util.Set<String>, java.lang.ClassLoader>;
	
	
}
@:internal extern class ClassLoaderObjectInputStream extends java.io.ObjectInputStream
{
	@:overload public function new(is : java.io.InputStream, map : java.util.Map<java.util.Set<String>, java.lang.ClassLoader>) : Void;
	
	@:overload override private function resolveClass(classDesc : java.io.ObjectStreamClass) : Class<Dynamic>;
	
	@:overload override private function resolveProxyClass(interfaces : java.NativeArray<String>) : Class<Dynamic>;
	
	
}
