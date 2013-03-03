package sun.tools.jar;
/*
* Copyright (c) 1996, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class SignatureFile
{
	/**
	* Constructs a new Signature file corresponding to a given
	* Manifest. All entries in the manifest are signed.
	*
	* @param manifest the manifest to use.
	*
	* @param name for this signature file. This should
	* be less than 8 characters, and without a suffix (i.e.
	* without a period in it.
	*
	* @exception JarException if an invalid name is passed in.
	*/
	@:overload @:public public function new(manifest : sun.tools.jar.Manifest, name : String) : Void;
	
	/**
	* Constructs a new Signature file corresponding to a given
	* Manifest. Specific entries in the manifest are signed.
	*
	* @param manifest the manifest to use.
	*
	* @param entries the entries to sign.
	*
	* @param filename for this signature file. This should
	* be less than 8 characters, and without a suffix (i.e.
	* without a period in it.
	*
	* @exception JarException if an invalid name is passed in.
	*/
	@:overload @:public public function new(manifest : sun.tools.jar.Manifest, entries : java.NativeArray<String>, filename : String) : Void;
	
	/**
	* Construct a Signature file from an input stream.
	*
	* @exception IOException if an invalid name is passed in or if a
	* stream exception occurs.
	*/
	@:overload @:public public function new(is : java.io.InputStream, filename : String) : Void;
	
	/**
	* Construct a Signature file from an input stream.
	*
	* @exception IOException if an invalid name is passed in or if a
	* stream exception occurs.
	*/
	@:overload @:public public function new(is : java.io.InputStream) : Void;
	
	@:overload @:public public function new(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the name of the signature file, ending with a ".SF"
	* suffix */
	@:overload @:public public function getName() : String;
	
	/**
	* Returns the name of the block file, ending with a block suffix
	* such as ".DSA". */
	@:overload @:public public function getBlockName() : String;
	
	/**
	* Returns the signature block associated with this file.
	*/
	@:overload @:public public function getBlock() : sun.security.pkcs.PKCS7;
	
	/**
	* Sets the signature block associated with this file.
	*/
	@:overload @:public public function setBlock(block : sun.security.pkcs.PKCS7) : Void;
	
	/**
	* Add a set of entries from the current manifest.
	*/
	@:overload @:public public function add(entries : java.NativeArray<String>) : Void;
	
	/**
	* Add a specific entry from the current manifest.
	*/
	@:overload @:public public function add(entry : String) : Void;
	
	/**
	* Get the entry corresponding to a given name. Returns null if
	*the entry does not exist.
	*/
	@:overload @:public public function getEntry(name : String) : sun.net.www.MessageHeader;
	
	/**
	* Returns the n-th entry. The global header is a entry 0.  */
	@:overload @:public public function entryAt(n : Int) : sun.net.www.MessageHeader;
	
	/**
	* Returns an enumeration of the entries.
	*/
	@:overload @:public public function entries() : java.util.Enumeration<Dynamic>;
	
	/**
	* Add a signature file at current position in a stream
	*/
	@:overload @:public public function stream(os : java.io.OutputStream) : Void;
	
	
}
