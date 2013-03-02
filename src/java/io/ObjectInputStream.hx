package java.io;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectInputStream extends java.io.InputStream implements java.io.ObjectInput implements java.io.ObjectStreamConstants
{
	/**
	* Creates an ObjectInputStream that reads from the specified InputStream.
	* A serialization stream header is read from the stream and verified.
	* This constructor will block until the corresponding ObjectOutputStream
	* has written and flushed the header.
	*
	* <p>If a security manager is installed, this constructor will check for
	* the "enableSubclassImplementation" SerializablePermission when invoked
	* directly or indirectly by the constructor of a subclass which overrides
	* the ObjectInputStream.readFields or ObjectInputStream.readUnshared
	* methods.
	*
	* @param   in input stream to read from
	* @throws  StreamCorruptedException if the stream header is incorrect
	* @throws  IOException if an I/O error occurs while reading stream header
	* @throws  SecurityException if untrusted subclass illegally overrides
	*          security-sensitive methods
	* @throws  NullPointerException if <code>in</code> is <code>null</code>
	* @see     ObjectInputStream#ObjectInputStream()
	* @see     ObjectInputStream#readFields()
	* @see     ObjectOutputStream#ObjectOutputStream(OutputStream)
	*/
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Provide a way for subclasses that are completely reimplementing
	* ObjectInputStream to not have to allocate private data just used by this
	* implementation of ObjectInputStream.
	*
	* <p>If there is a security manager installed, this method first calls the
	* security manager's <code>checkPermission</code> method with the
	* <code>SerializablePermission("enableSubclassImplementation")</code>
	* permission to ensure it's ok to enable subclassing.
	*
	* @throws  SecurityException if a security manager exists and its
	*          <code>checkPermission</code> method denies enabling
	*          subclassing.
	* @see SecurityManager#checkPermission
	* @see java.io.SerializablePermission
	*/
	@:overload private function new() : Void;
	
	/**
	* Read an object from the ObjectInputStream.  The class of the object, the
	* signature of the class, and the values of the non-transient and
	* non-static fields of the class and all of its supertypes are read.
	* Default deserializing for a class can be overriden using the writeObject
	* and readObject methods.  Objects referenced by this object are read
	* transitively so that a complete equivalent graph of objects is
	* reconstructed by readObject.
	*
	* <p>The root object is completely restored when all of its fields and the
	* objects it references are completely restored.  At this point the object
	* validation callbacks are executed in order based on their registered
	* priorities. The callbacks are registered by objects (in the readObject
	* special methods) as they are individually restored.
	*
	* <p>Exceptions are thrown for problems with the InputStream and for
	* classes that should not be deserialized.  All exceptions are fatal to
	* the InputStream and leave it in an indeterminate state; it is up to the
	* caller to ignore or recover the stream state.
	*
	* @throws  ClassNotFoundException Class of a serialized object cannot be
	*          found.
	* @throws  InvalidClassException Something is wrong with a class used by
	*          serialization.
	* @throws  StreamCorruptedException Control information in the
	*          stream is inconsistent.
	* @throws  OptionalDataException Primitive data was found in the
	*          stream instead of objects.
	* @throws  IOException Any of the usual Input/Output related exceptions.
	*/
	@:overload @:final public function readObject() : Dynamic;
	
	/**
	* This method is called by trusted subclasses of ObjectOutputStream that
	* constructed ObjectOutputStream using the protected no-arg constructor.
	* The subclass is expected to provide an override method with the modifier
	* "final".
	*
	* @return  the Object read from the stream.
	* @throws  ClassNotFoundException Class definition of a serialized object
	*          cannot be found.
	* @throws  OptionalDataException Primitive data was found in the stream
	*          instead of objects.
	* @throws  IOException if I/O errors occurred while reading from the
	*          underlying stream
	* @see #ObjectInputStream()
	* @see #readObject()
	* @since 1.2
	*/
	@:require(java2) @:overload private function readObjectOverride() : Dynamic;
	
	/**
	* Reads an "unshared" object from the ObjectInputStream.  This method is
	* identical to readObject, except that it prevents subsequent calls to
	* readObject and readUnshared from returning additional references to the
	* deserialized instance obtained via this call.  Specifically:
	* <ul>
	*   <li>If readUnshared is called to deserialize a back-reference (the
	*       stream representation of an object which has been written
	*       previously to the stream), an ObjectStreamException will be
	*       thrown.
	*
	*   <li>If readUnshared returns successfully, then any subsequent attempts
	*       to deserialize back-references to the stream handle deserialized
	*       by readUnshared will cause an ObjectStreamException to be thrown.
	* </ul>
	* Deserializing an object via readUnshared invalidates the stream handle
	* associated with the returned object.  Note that this in itself does not
	* always guarantee that the reference returned by readUnshared is unique;
	* the deserialized object may define a readResolve method which returns an
	* object visible to other parties, or readUnshared may return a Class
	* object or enum constant obtainable elsewhere in the stream or through
	* external means. If the deserialized object defines a readResolve method
	* and the invocation of that method returns an array, then readUnshared
	* returns a shallow clone of that array; this guarantees that the returned
	* array object is unique and cannot be obtained a second time from an
	* invocation of readObject or readUnshared on the ObjectInputStream,
	* even if the underlying data stream has been manipulated.
	*
	* <p>ObjectInputStream subclasses which override this method can only be
	* constructed in security contexts possessing the
	* "enableSubclassImplementation" SerializablePermission; any attempt to
	* instantiate such a subclass without this permission will cause a
	* SecurityException to be thrown.
	*
	* @return  reference to deserialized object
	* @throws  ClassNotFoundException if class of an object to deserialize
	*          cannot be found
	* @throws  StreamCorruptedException if control information in the stream
	*          is inconsistent
	* @throws  ObjectStreamException if object to deserialize has already
	*          appeared in stream
	* @throws  OptionalDataException if primitive data is next in stream
	* @throws  IOException if an I/O error occurs during deserialization
	* @since   1.4
	*/
	@:require(java4) @:overload public function readUnshared() : Dynamic;
	
	/**
	* Read the non-static and non-transient fields of the current class from
	* this stream.  This may only be called from the readObject method of the
	* class being deserialized. It will throw the NotActiveException if it is
	* called otherwise.
	*
	* @throws  ClassNotFoundException if the class of a serialized object
	*          could not be found.
	* @throws  IOException if an I/O error occurs.
	* @throws  NotActiveException if the stream is not currently reading
	*          objects.
	*/
	@:overload public function defaultReadObject() : Void;
	
	/**
	* Reads the persistent fields from the stream and makes them available by
	* name.
	*
	* @return  the <code>GetField</code> object representing the persistent
	*          fields of the object being deserialized
	* @throws  ClassNotFoundException if the class of a serialized object
	*          could not be found.
	* @throws  IOException if an I/O error occurs.
	* @throws  NotActiveException if the stream is not currently reading
	*          objects.
	* @since 1.2
	*/
	@:require(java2) @:overload public function readFields() : java.io.ObjectInputStream.ObjectInputStream_GetField;
	
	/**
	* Register an object to be validated before the graph is returned.  While
	* similar to resolveObject these validations are called after the entire
	* graph has been reconstituted.  Typically, a readObject method will
	* register the object with the stream so that when all of the objects are
	* restored a final set of validations can be performed.
	*
	* @param   obj the object to receive the validation callback.
	* @param   prio controls the order of callbacks;zero is a good default.
	*          Use higher numbers to be called back earlier, lower numbers for
	*          later callbacks. Within a priority, callbacks are processed in
	*          no particular order.
	* @throws  NotActiveException The stream is not currently reading objects
	*          so it is invalid to register a callback.
	* @throws  InvalidObjectException The validation object is null.
	*/
	@:overload public function registerValidation(obj : java.io.ObjectInputValidation, prio : Int) : Void;
	
	/**
	* Load the local class equivalent of the specified stream class
	* description.  Subclasses may implement this method to allow classes to
	* be fetched from an alternate source.
	*
	* <p>The corresponding method in <code>ObjectOutputStream</code> is
	* <code>annotateClass</code>.  This method will be invoked only once for
	* each unique class in the stream.  This method can be implemented by
	* subclasses to use an alternate loading mechanism but must return a
	* <code>Class</code> object. Once returned, if the class is not an array
	* class, its serialVersionUID is compared to the serialVersionUID of the
	* serialized class, and if there is a mismatch, the deserialization fails
	* and an {@link InvalidClassException} is thrown.
	*
	* <p>The default implementation of this method in
	* <code>ObjectInputStream</code> returns the result of calling
	* <pre>
	*     Class.forName(desc.getName(), false, loader)
	* </pre>
	* where <code>loader</code> is determined as follows: if there is a
	* method on the current thread's stack whose declaring class was
	* defined by a user-defined class loader (and was not a generated to
	* implement reflective invocations), then <code>loader</code> is class
	* loader corresponding to the closest such method to the currently
	* executing frame; otherwise, <code>loader</code> is
	* <code>null</code>. If this call results in a
	* <code>ClassNotFoundException</code> and the name of the passed
	* <code>ObjectStreamClass</code> instance is the Java language keyword
	* for a primitive type or void, then the <code>Class</code> object
	* representing that primitive type or void will be returned
	* (e.g., an <code>ObjectStreamClass</code> with the name
	* <code>"int"</code> will be resolved to <code>Integer.TYPE</code>).
	* Otherwise, the <code>ClassNotFoundException</code> will be thrown to
	* the caller of this method.
	*
	* @param   desc an instance of class <code>ObjectStreamClass</code>
	* @return  a <code>Class</code> object corresponding to <code>desc</code>
	* @throws  IOException any of the usual Input/Output exceptions.
	* @throws  ClassNotFoundException if class of a serialized object cannot
	*          be found.
	*/
	@:overload private function resolveClass(desc : java.io.ObjectStreamClass) : Class<Dynamic>;
	
	/**
	* Returns a proxy class that implements the interfaces named in a proxy
	* class descriptor; subclasses may implement this method to read custom
	* data from the stream along with the descriptors for dynamic proxy
	* classes, allowing them to use an alternate loading mechanism for the
	* interfaces and the proxy class.
	*
	* <p>This method is called exactly once for each unique proxy class
	* descriptor in the stream.
	*
	* <p>The corresponding method in <code>ObjectOutputStream</code> is
	* <code>annotateProxyClass</code>.  For a given subclass of
	* <code>ObjectInputStream</code> that overrides this method, the
	* <code>annotateProxyClass</code> method in the corresponding subclass of
	* <code>ObjectOutputStream</code> must write any data or objects read by
	* this method.
	*
	* <p>The default implementation of this method in
	* <code>ObjectInputStream</code> returns the result of calling
	* <code>Proxy.getProxyClass</code> with the list of <code>Class</code>
	* objects for the interfaces that are named in the <code>interfaces</code>
	* parameter.  The <code>Class</code> object for each interface name
	* <code>i</code> is the value returned by calling
	* <pre>
	*     Class.forName(i, false, loader)
	* </pre>
	* where <code>loader</code> is that of the first non-<code>null</code>
	* class loader up the execution stack, or <code>null</code> if no
	* non-<code>null</code> class loaders are on the stack (the same class
	* loader choice used by the <code>resolveClass</code> method).  Unless any
	* of the resolved interfaces are non-public, this same value of
	* <code>loader</code> is also the class loader passed to
	* <code>Proxy.getProxyClass</code>; if non-public interfaces are present,
	* their class loader is passed instead (if more than one non-public
	* interface class loader is encountered, an
	* <code>IllegalAccessError</code> is thrown).
	* If <code>Proxy.getProxyClass</code> throws an
	* <code>IllegalArgumentException</code>, <code>resolveProxyClass</code>
	* will throw a <code>ClassNotFoundException</code> containing the
	* <code>IllegalArgumentException</code>.
	*
	* @param interfaces the list of interface names that were
	*                deserialized in the proxy class descriptor
	* @return  a proxy class for the specified interfaces
	* @throws        IOException any exception thrown by the underlying
	*                <code>InputStream</code>
	* @throws        ClassNotFoundException if the proxy class or any of the
	*                named interfaces could not be found
	* @see ObjectOutputStream#annotateProxyClass(Class)
	* @since 1.3
	*/
	@:require(java3) @:overload private function resolveProxyClass(interfaces : java.NativeArray<String>) : Class<Dynamic>;
	
	/**
	* This method will allow trusted subclasses of ObjectInputStream to
	* substitute one object for another during deserialization. Replacing
	* objects is disabled until enableResolveObject is called. The
	* enableResolveObject method checks that the stream requesting to resolve
	* object can be trusted. Every reference to serializable objects is passed
	* to resolveObject.  To insure that the private state of objects is not
	* unintentionally exposed only trusted streams may use resolveObject.
	*
	* <p>This method is called after an object has been read but before it is
	* returned from readObject.  The default resolveObject method just returns
	* the same object.
	*
	* <p>When a subclass is replacing objects it must insure that the
	* substituted object is compatible with every field where the reference
	* will be stored.  Objects whose type is not a subclass of the type of the
	* field or array element abort the serialization by raising an exception
	* and the object is not be stored.
	*
	* <p>This method is called only once when each object is first
	* encountered.  All subsequent references to the object will be redirected
	* to the new object.
	*
	* @param   obj object to be substituted
	* @return  the substituted object
	* @throws  IOException Any of the usual Input/Output exceptions.
	*/
	@:overload private function resolveObject(obj : Dynamic) : Dynamic;
	
	/**
	* Enable the stream to allow objects read from the stream to be replaced.
	* When enabled, the resolveObject method is called for every object being
	* deserialized.
	*
	* <p>If <i>enable</i> is true, and there is a security manager installed,
	* this method first calls the security manager's
	* <code>checkPermission</code> method with the
	* <code>SerializablePermission("enableSubstitution")</code> permission to
	* ensure it's ok to enable the stream to allow objects read from the
	* stream to be replaced.
	*
	* @param   enable true for enabling use of <code>resolveObject</code> for
	*          every object being deserialized
	* @return  the previous setting before this method was invoked
	* @throws  SecurityException if a security manager exists and its
	*          <code>checkPermission</code> method denies enabling the stream
	*          to allow objects read from the stream to be replaced.
	* @see SecurityManager#checkPermission
	* @see java.io.SerializablePermission
	*/
	@:overload private function enableResolveObject(enable : Bool) : Bool;
	
	/**
	* The readStreamHeader method is provided to allow subclasses to read and
	* verify their own stream headers. It reads and verifies the magic number
	* and version number.
	*
	* @throws  IOException if there are I/O errors while reading from the
	*          underlying <code>InputStream</code>
	* @throws  StreamCorruptedException if control information in the stream
	*          is inconsistent
	*/
	@:overload private function readStreamHeader() : Void;
	
	/**
	* Read a class descriptor from the serialization stream.  This method is
	* called when the ObjectInputStream expects a class descriptor as the next
	* item in the serialization stream.  Subclasses of ObjectInputStream may
	* override this method to read in class descriptors that have been written
	* in non-standard formats (by subclasses of ObjectOutputStream which have
	* overridden the <code>writeClassDescriptor</code> method).  By default,
	* this method reads class descriptors according to the format defined in
	* the Object Serialization specification.
	*
	* @return  the class descriptor read
	* @throws  IOException If an I/O error has occurred.
	* @throws  ClassNotFoundException If the Class of a serialized object used
	*          in the class descriptor representation cannot be found
	* @see java.io.ObjectOutputStream#writeClassDescriptor(java.io.ObjectStreamClass)
	* @since 1.3
	*/
	@:require(java3) @:overload private function readClassDescriptor() : java.io.ObjectStreamClass;
	
	/**
	* Reads a byte of data. This method will block if no input is available.
	*
	* @return  the byte read, or -1 if the end of the stream is reached.
	* @throws  IOException If an I/O error has occurred.
	*/
	@:overload override public function read() : Int;
	
	/**
	* Reads into an array of bytes.  This method will block until some input
	* is available. Consider using java.io.DataInputStream.readFully to read
	* exactly 'length' bytes.
	*
	* @param   buf the buffer into which the data is read
	* @param   off the start offset of the data
	* @param   len the maximum number of bytes read
	* @return  the actual number of bytes read, -1 is returned when the end of
	*          the stream is reached.
	* @throws  IOException If an I/O error has occurred.
	* @see java.io.DataInputStream#readFully(byte[],int,int)
	*/
	@:overload override public function read(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Returns the number of bytes that can be read without blocking.
	*
	* @return  the number of available bytes.
	* @throws  IOException if there are I/O errors while reading from the
	*          underlying <code>InputStream</code>
	*/
	@:overload override public function available() : Int;
	
	/**
	* Closes the input stream. Must be called to release any resources
	* associated with the stream.
	*
	* @throws  IOException If an I/O error has occurred.
	*/
	@:overload override public function close() : Void;
	
	/**
	* Reads in a boolean.
	*
	* @return  the boolean read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readBoolean() : Bool;
	
	/**
	* Reads an 8 bit byte.
	*
	* @return  the 8 bit byte read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readByte() : java.StdTypes.Int8;
	
	/**
	* Reads an unsigned 8 bit byte.
	*
	* @return  the 8 bit byte read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readUnsignedByte() : Int;
	
	/**
	* Reads a 16 bit char.
	*
	* @return  the 16 bit char read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readChar() : java.StdTypes.Char16;
	
	/**
	* Reads a 16 bit short.
	*
	* @return  the 16 bit short read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readShort() : java.StdTypes.Int16;
	
	/**
	* Reads an unsigned 16 bit short.
	*
	* @return  the 16 bit short read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readUnsignedShort() : Int;
	
	/**
	* Reads a 32 bit int.
	*
	* @return  the 32 bit integer read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readInt() : Int;
	
	/**
	* Reads a 64 bit long.
	*
	* @return  the read 64 bit long.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readLong() : haxe.Int64;
	
	/**
	* Reads a 32 bit float.
	*
	* @return  the 32 bit float read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readFloat() : Single;
	
	/**
	* Reads a 64 bit double.
	*
	* @return  the 64 bit double read.
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readDouble() : Float;
	
	/**
	* Reads bytes, blocking until all bytes are read.
	*
	* @param   buf the buffer into which the data is read
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readFully(buf : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Reads bytes, blocking until all bytes are read.
	*
	* @param   buf the buffer into which the data is read
	* @param   off the start offset of the data
	* @param   len the maximum number of bytes to read
	* @throws  EOFException If end of file is reached.
	* @throws  IOException If other I/O error has occurred.
	*/
	@:overload public function readFully(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Skips bytes.
	*
	* @param   len the number of bytes to be skipped
	* @return  the actual number of bytes skipped.
	* @throws  IOException If an I/O error has occurred.
	*/
	@:overload public function skipBytes(len : Int) : Int;
	
	/**
	* Reads in a line that has been terminated by a \n, \r, \r\n or EOF.
	*
	* @return  a String copy of the line.
	* @throws  IOException if there are I/O errors while reading from the
	*          underlying <code>InputStream</code>
	* @deprecated This method does not properly convert bytes to characters.
	*          see DataInputStream for the details and alternatives.
	*/
	@:overload public function readLine() : String;
	
	/**
	* Reads a String in
	* <a href="DataInput.html#modified-utf-8">modified UTF-8</a>
	* format.
	*
	* @return  the String.
	* @throws  IOException if there are I/O errors while reading from the
	*          underlying <code>InputStream</code>
	* @throws  UTFDataFormatException if read bytes do not represent a valid
	*          modified UTF-8 encoding of a string
	*/
	@:overload public function readUTF() : String;
	
	
}
@:native('java$io$ObjectInputStream$Caches') @:internal extern class ObjectInputStream_Caches
{
	
}
/**
* Provide access to the persistent fields read from the input stream.
*/
@:native('java$io$ObjectInputStream$GetField') extern class ObjectInputStream_GetField
{
	/**
	* Get the ObjectStreamClass that describes the fields in the stream.
	*
	* @return  the descriptor class that describes the serializable fields
	*/
	@:overload @:abstract public function getObjectStreamClass() : java.io.ObjectStreamClass;
	
	/**
	* Return true if the named field is defaulted and has no value in this
	* stream.
	*
	* @param  name the name of the field
	* @return true, if and only if the named field is defaulted
	* @throws IOException if there are I/O errors while reading from
	*         the underlying <code>InputStream</code>
	* @throws IllegalArgumentException if <code>name</code> does not
	*         correspond to a serializable field
	*/
	@:overload @:abstract public function defaulted(name : String) : Bool;
	
	/**
	* Get the value of the named boolean field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>boolean</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : Bool) : Bool;
	
	/**
	* Get the value of the named byte field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>byte</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : java.StdTypes.Int8) : java.StdTypes.Int8;
	
	/**
	* Get the value of the named char field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>char</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	/**
	* Get the value of the named short field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>short</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	/**
	* Get the value of the named int field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>int</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : Int) : Int;
	
	/**
	* Get the value of the named long field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>long</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : haxe.Int64) : haxe.Int64;
	
	/**
	* Get the value of the named float field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>float</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : Single) : Single;
	
	/**
	* Get the value of the named double field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>double</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : Float) : Float;
	
	/**
	* Get the value of the named Object field from the persistent field.
	*
	* @param  name the name of the field
	* @param  val the default value to use if <code>name</code> does not
	*         have a value
	* @return the value of the named <code>Object</code> field
	* @throws IOException if there are I/O errors while reading from the
	*         underlying <code>InputStream</code>
	* @throws IllegalArgumentException if type of <code>name</code> is
	*         not serializable or if the field type is incorrect
	*/
	@:overload @:abstract public function get(name : String, val : Dynamic) : Dynamic;
	
	
}
/**
* Default GetField implementation.
*/
@:native('java$io$ObjectInputStream$GetFieldImpl') @:internal extern class ObjectInputStream_GetFieldImpl extends java.io.ObjectInputStream.ObjectInputStream_GetField
{
	@:overload override public function getObjectStreamClass() : java.io.ObjectStreamClass;
	
	@:overload override public function defaulted(name : String) : Bool;
	
	@:overload override public function get(name : String, val : Bool) : Bool;
	
	@:overload override public function get(name : String, val : java.StdTypes.Int8) : java.StdTypes.Int8;
	
	@:overload override public function get(name : String, val : java.StdTypes.Char16) : java.StdTypes.Char16;
	
	@:overload override public function get(name : String, val : java.StdTypes.Int16) : java.StdTypes.Int16;
	
	@:overload override public function get(name : String, val : Int) : Int;
	
	@:overload override public function get(name : String, val : Single) : Single;
	
	@:overload override public function get(name : String, val : haxe.Int64) : haxe.Int64;
	
	@:overload override public function get(name : String, val : Float) : Float;
	
	@:overload override public function get(name : String, val : Dynamic) : Dynamic;
	
	
}
/**
* Prioritized list of callbacks to be performed once object graph has been
* completely deserialized.
*/
@:native('java$io$ObjectInputStream$ValidationList') @:internal extern class ObjectInputStream_ValidationList
{
	/**
	* Resets the callback list to its initial (empty) state.
	*/
	@:overload public function clear() : Void;
	
	
}
@:native('java$io$ObjectInputStream$ValidationList$Callback') @:internal extern class ObjectInputStream_ValidationList_Callback
{
	
}
/**
* Input stream supporting single-byte peek operations.
*/
@:native('java$io$ObjectInputStream$PeekInputStream') @:internal extern class ObjectInputStream_PeekInputStream extends java.io.InputStream
{
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	
}
/**
* Input stream with two modes: in default mode, inputs data written in the
* same format as DataOutputStream; in "block data" mode, inputs data
* bracketed by block data markers (see object serialization specification
* for details).  Buffering depends on block data mode: when in default
* mode, no data is buffered in advance; when in block data mode, all data
* for the current data block is read in at once (and buffered).
*/
@:native('java$io$ObjectInputStream$BlockDataInputStream') @:internal extern class ObjectInputStream_BlockDataInputStream extends java.io.InputStream implements java.io.DataInput
{
	/*
	* The following methods are equivalent to their counterparts in
	* InputStream, except that they interpret data block boundaries and
	* read the requested data from within data blocks when in block data
	* mode.
	*/
	@:overload override public function read() : Int;
	
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function skip(len : haxe.Int64) : haxe.Int64;
	
	@:overload override public function available() : Int;
	
	@:overload override public function close() : Void;
	
	/*
	* The following methods are equivalent to their counterparts in
	* DataInputStream, except that they interpret data block boundaries
	* and read the requested data from within data blocks when in block
	* data mode.
	*/
	@:overload public function readFully(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function readFully(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload public function readFully(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int, copy : Bool) : Void;
	
	@:overload public function skipBytes(n : Int) : Int;
	
	@:overload public function readBoolean() : Bool;
	
	@:overload public function readByte() : java.StdTypes.Int8;
	
	@:overload public function readUnsignedByte() : Int;
	
	@:overload public function readChar() : java.StdTypes.Char16;
	
	@:overload public function readShort() : java.StdTypes.Int16;
	
	@:overload public function readUnsignedShort() : Int;
	
	@:overload public function readInt() : Int;
	
	@:overload public function readFloat() : Single;
	
	@:overload public function readLong() : haxe.Int64;
	
	@:overload public function readDouble() : Float;
	
	@:overload public function readUTF() : String;
	
	@:overload public function readLine() : String;
	
	
}
/**
* Unsynchronized table which tracks wire handle to object mappings, as
* well as ClassNotFoundExceptions associated with deserialized objects.
* This class implements an exception-propagation algorithm for
* determining which objects should have ClassNotFoundExceptions associated
* with them, taking into account cycles and discontinuities (e.g., skipped
* fields) in the object graph.
*
* <p>General use of the table is as follows: during deserialization, a
* given object is first assigned a handle by calling the assign method.
* This method leaves the assigned handle in an "open" state, wherein
* dependencies on the exception status of other handles can be registered
* by calling the markDependency method, or an exception can be directly
* associated with the handle by calling markException.  When a handle is
* tagged with an exception, the HandleTable assumes responsibility for
* propagating the exception to any other objects which depend
* (transitively) on the exception-tagged object.
*
* <p>Once all exception information/dependencies for the handle have been
* registered, the handle should be "closed" by calling the finish method
* on it.  The act of finishing a handle allows the exception propagation
* algorithm to aggressively prune dependency links, lessening the
* performance/memory impact of exception tracking.
*
* <p>Note that the exception propagation algorithm used depends on handles
* being assigned/finished in LIFO order; however, for simplicity as well
* as memory conservation, it does not enforce this constraint.
*/
@:native('java$io$ObjectInputStream$HandleTable') @:internal extern class ObjectInputStream_HandleTable
{
	
}
/**
* Simple growable list of (integer) handles.
*/
@:native('java$io$ObjectInputStream$HandleTable$HandleList') @:internal extern class ObjectInputStream_HandleTable_HandleList
{
	@:overload public function new() : Void;
	
	@:overload public function add(handle : Int) : Void;
	
	@:overload public function get(index : Int) : Int;
	
	@:overload public function size() : Int;
	
	
}
