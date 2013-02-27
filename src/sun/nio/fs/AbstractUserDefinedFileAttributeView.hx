package sun.nio.fs;
/*
* Copyright (c) 2008, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Base implementation of UserDefinedAttributeView
*/
@:internal extern class AbstractUserDefinedFileAttributeView implements java.nio.file.attribute.UserDefinedFileAttributeView implements sun.nio.fs.DynamicFileAttributeView
{
	@:overload private function new() : Void;
	
	@:overload private function checkAccess(file : String, checkRead : Bool, checkWrite : Bool) : Void;
	
	@:overload @:final public function name() : String;
	
	@:overload @:final public function setAttribute(attribute : String, value : Dynamic) : Void;
	
	@:overload @:final public function readAttributes(attributes : java.NativeArray<String>) : java.util.Map<String, Dynamic>;
	
	/**
	* Writes the value of a user-defined attribute from a buffer.
	*
	* <p> This method writes the value of the attribute from a given buffer as
	* a sequence of bytes. The size of the value to transfer is {@code r},
	* where {@code r} is the number of bytes remaining in the buffer, that is
	* {@code src.remaining()}. The sequence of bytes is transferred from the
	* buffer starting at index {@code p}, where {@code p} is the buffer's
	* position. Upon return, the buffer's position will be equal to {@code
	* p + n}, where {@code n} is the number of bytes transferred; its limit
	* will not have changed.
	*
	* <p> If an attribute of the given name already exists then its value is
	* replaced. If the attribute does not exist then it is created. If it
	* implementation specific if a test to check for the existence of the
	* attribute and the creation of attribute are atomic with repect to other
	* file system activities.
	*
	* <p> Where there is insufficient space to store the attribute, or the
	* attribute name or value exceed an implementation specific maximum size
	* then an {@code IOException} is thrown.
	*
	* <p> <b>Usage Example:</b>
	* Suppose we want to write a file's MIME type as a user-defined attribute:
	* <pre>
	*    UserDefinedFileAttributeView view =
	*        FIles.getFileAttributeView(path, UserDefinedFileAttributeView.class);
	*    view.write("user.mimetype", Charset.defaultCharset().encode("text/html"));
	* </pre>
	*
	* @param   name
	*          The attribute name
	* @param   src
	*          The buffer containing the attribute value
	*
	* @return  The number of bytes written, possibly zero
	*
	* @throws  IOException
	*          If an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link
	*          RuntimePermission}<tt>("accessUserDefinedAttributes")</tt>
	*          or its {@link SecurityManager#checkWrite(String) checkWrite}
	*          method denies write access to the file.
	*/
	@:overload public function write(name : String, src : java.nio.ByteBuffer) : Int;
	
	/**
	* Returns a list containing the names of the user-defined attributes.
	*
	* @return  An unmodifiable list continaing the names of the file's
	*          user-defined
	*
	* @throws  IOException
	*          If an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link
	*          RuntimePermission}<tt>("accessUserDefinedAttributes")</tt>
	*          or its {@link SecurityManager#checkRead(String) checkRead} method
	*          denies read access to the file.
	*/
	@:overload public function list() : java.util.List<String>;
	
	/**
	* Read the value of a user-defined attribute into a buffer.
	*
	* <p> This method reads the value of the attribute into the given buffer
	* as a sequence of bytes, failing if the number of bytes remaining in
	* the buffer is insufficient to read the complete attribute value. The
	* number of bytes transferred into the buffer is {@code n}, where {@code n}
	* is the size of the attribute value. The first byte in the sequence is at
	* index {@code p} and the last byte is at index {@code p + n - 1}, where
	* {@code p} is the buffer's position. Upon return the buffer's position
	* will be equal to {@code p + n}; its limit will not have changed.
	*
	* <p> <b>Usage Example:</b>
	* Suppose we want to read a file's MIME type that is stored as a user-defined
	* attribute with the name "{@code user.mimetype}".
	* <pre>
	*    UserDefinedFileAttributeView view =
	*        Files.getFileAttributeView(path, UserDefinedFileAttributeView.class);
	*    String name = "user.mimetype";
	*    ByteBuffer buf = ByteBuffer.allocate(view.size(name));
	*    view.read(name, buf);
	*    buf.flip();
	*    String value = Charset.defaultCharset().decode(buf).toString();
	* </pre>
	*
	* @param   name
	*          The attribute name
	* @param   dst
	*          The destination buffer
	*
	* @return  The number of bytes read, possibly zero
	*
	* @throws  IllegalArgumentException
	*          If the destination buffer is read-only
	* @throws  IOException
	*          If an I/O error occurs or there is insufficient space in the
	*          destination buffer for the attribute value
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link
	*          RuntimePermission}<tt>("accessUserDefinedAttributes")</tt>
	*          or its {@link SecurityManager#checkRead(String) checkRead} method
	*          denies read access to the file.
	*
	* @see #size
	*/
	@:overload public function read(name : String, dst : java.nio.ByteBuffer) : Int;
	
	/**
	* Returns the size of the value of a user-defined attribute.
	*
	* @param   name
	*          The attribute name
	*
	* @return  The size of the attribute value, in bytes.
	*
	* @throws  ArithmeticException
	*          If the size of the attribute is larger than {@link Integer#MAX_VALUE}
	* @throws  IOException
	*          If an I/O error occurs
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link
	*          RuntimePermission}<tt>("accessUserDefinedAttributes")</tt>
	*          or its {@link SecurityManager#checkRead(String) checkRead} method
	*          denies read access to the file.
	*/
	@:overload public function size(name : String) : Int;
	
	/**
	* Deletes a user-defined attribute.
	*
	* @param   name
	*          The attribute name
	*
	* @throws  IOException
	*          If an I/O error occurs or the attribute does not exist
	* @throws  SecurityException
	*          In the case of the default provider, a security manager is
	*          installed, and it denies {@link
	*          RuntimePermission}<tt>("accessUserDefinedAttributes")</tt>
	*          or its {@link SecurityManager#checkWrite(String) checkWrite}
	*          method denies write access to the file.
	*/
	@:overload public function delete(name : String) : Void;
	
	
}
