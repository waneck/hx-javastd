package java.util.jar;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class Manifest implements java.lang.Cloneable
{
	/**
	* Constructs a new, empty Manifest.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a new Manifest from the specified input stream.
	*
	* @param is the input stream containing manifest data
	* @throws IOException if an I/O error has occured
	*/
	@:overload public function new(is : java.io.InputStream) : Void;
	
	/**
	* Constructs a new Manifest that is a copy of the specified Manifest.
	*
	* @param man the Manifest to copy
	*/
	@:overload public function new(man : Manifest) : Void;
	
	/**
	* Returns the main Attributes for the Manifest.
	* @return the main Attributes for the Manifest
	*/
	@:overload public function getMainAttributes() : java.util.jar.Attributes;
	
	/**
	* Returns a Map of the entries contained in this Manifest. Each entry
	* is represented by a String name (key) and associated Attributes (value).
	* The Map permits the {@code null} key, but no entry with a null key is
	* created by {@link #read}, nor is such an entry written by using {@link
	* #write}.
	*
	* @return a Map of the entries contained in this Manifest
	*/
	@:overload public function getEntries() : java.util.Map<String, java.util.jar.Attributes>;
	
	/**
	* Returns the Attributes for the specified entry name.
	* This method is defined as:
	* <pre>
	*      return (Attributes)getEntries().get(name)
	* </pre>
	* Though {@code null} is a valid {@code name}, when
	* {@code getAttributes(null)} is invoked on a {@code Manifest}
	* obtained from a jar file, {@code null} will be returned.  While jar
	* files themselves do not allow {@code null}-named attributes, it is
	* possible to invoke {@link #getEntries} on a {@code Manifest}, and
	* on that result, invoke {@code put} with a null key and an
	* arbitrary value.  Subsequent invocations of
	* {@code getAttributes(null)} will return the just-{@code put}
	* value.
	* <p>
	* Note that this method does not return the manifest's main attributes;
	* see {@link #getMainAttributes}.
	*
	* @param name entry name
	* @return the Attributes for the specified entry name
	*/
	@:overload public function getAttributes(name : String) : java.util.jar.Attributes;
	
	/**
	* Clears the main Attributes as well as the entries in this Manifest.
	*/
	@:overload public function clear() : Void;
	
	/**
	* Writes the Manifest to the specified OutputStream.
	* Attributes.Name.MANIFEST_VERSION must be set in
	* MainAttributes prior to invoking this method.
	*
	* @param out the output stream
	* @exception IOException if an I/O error has occurred
	* @see #getMainAttributes
	*/
	@:overload public function write(out : java.io.OutputStream) : Void;
	
	/**
	* Reads the Manifest from the specified InputStream. The entry
	* names and attributes read will be merged in with the current
	* manifest entries.
	*
	* @param is the input stream
	* @exception IOException if an I/O error has occurred
	*/
	@:overload public function read(is : java.io.InputStream) : Void;
	
	/**
	* Returns true if the specified Object is also a Manifest and has
	* the same main Attributes and entries.
	*
	* @param o the object to be compared
	* @return true if the specified Object is also a Manifest and has
	* the same main Attributes and entries
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns the hash code for this Manifest.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns a shallow copy of this Manifest.  The shallow copy is
	* implemented as follows:
	* <pre>
	*     public Object clone() { return new Manifest(this); }
	* </pre>
	* @return a shallow copy of this Manifest
	*/
	@:overload public function clone() : Dynamic;
	
	
}
/*
* A fast buffered input stream for parsing manifest files.
*/
@:native('java$util$jar$Manifest$FastInputStream') @:internal extern class Manifest_FastInputStream extends java.io.FilterInputStream
{
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/*
	* Reads 'len' bytes from the input stream, or until an end-of-line
	* is reached. Returns the number of bytes read.
	*/
	@:overload public function readLine(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload public function peek() : java.StdTypes.Int8;
	
	@:overload public function readLine(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	
}
