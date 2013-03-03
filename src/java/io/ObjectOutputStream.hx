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
extern class ObjectOutputStream extends java.io.OutputStream implements java.io.ObjectOutput implements java.io.ObjectStreamConstants
{
	/**
	* Creates an ObjectOutputStream that writes to the specified OutputStream.
	* This constructor writes the serialization stream header to the
	* underlying stream; callers may wish to flush the stream immediately to
	* ensure that constructors for receiving ObjectInputStreams will not block
	* when reading the header.
	*
	* <p>If a security manager is installed, this constructor will check for
	* the "enableSubclassImplementation" SerializablePermission when invoked
	* directly or indirectly by the constructor of a subclass which overrides
	* the ObjectOutputStream.putFields or ObjectOutputStream.writeUnshared
	* methods.
	*
	* @param   out output stream to write to
	* @throws  IOException if an I/O error occurs while writing stream header
	* @throws  SecurityException if untrusted subclass illegally overrides
	*          security-sensitive methods
	* @throws  NullPointerException if <code>out</code> is <code>null</code>
	* @since   1.4
	* @see     ObjectOutputStream#ObjectOutputStream()
	* @see     ObjectOutputStream#putFields()
	* @see     ObjectInputStream#ObjectInputStream(InputStream)
	*/
	@:require(java4) @:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Provide a way for subclasses that are completely reimplementing
	* ObjectOutputStream to not have to allocate private data just used by
	* this implementation of ObjectOutputStream.
	*
	* <p>If there is a security manager installed, this method first calls the
	* security manager's <code>checkPermission</code> method with a
	* <code>SerializablePermission("enableSubclassImplementation")</code>
	* permission to ensure it's ok to enable subclassing.
	*
	* @throws  SecurityException if a security manager exists and its
	*          <code>checkPermission</code> method denies enabling
	*          subclassing.
	* @see SecurityManager#checkPermission
	* @see java.io.SerializablePermission
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Specify stream protocol version to use when writing the stream.
	*
	* <p>This routine provides a hook to enable the current version of
	* Serialization to write in a format that is backwards compatible to a
	* previous version of the stream format.
	*
	* <p>Every effort will be made to avoid introducing additional
	* backwards incompatibilities; however, sometimes there is no
	* other alternative.
	*
	* @param   version use ProtocolVersion from java.io.ObjectStreamConstants.
	* @throws  IllegalStateException if called after any objects
	*          have been serialized.
	* @throws  IllegalArgumentException if invalid version is passed in.
	* @throws  IOException if I/O errors occur
	* @see java.io.ObjectStreamConstants#PROTOCOL_VERSION_1
	* @see java.io.ObjectStreamConstants#PROTOCOL_VERSION_2
	* @since   1.2
	*/
	@:require(java2) @:overload @:public public function useProtocolVersion(version : Int) : Void;
	
	/**
	* Write the specified object to the ObjectOutputStream.  The class of the
	* object, the signature of the class, and the values of the non-transient
	* and non-static fields of the class and all of its supertypes are
	* written.  Default serialization for a class can be overridden using the
	* writeObject and the readObject methods.  Objects referenced by this
	* object are written transitively so that a complete equivalent graph of
	* objects can be reconstructed by an ObjectInputStream.
	*
	* <p>Exceptions are thrown for problems with the OutputStream and for
	* classes that should not be serialized.  All exceptions are fatal to the
	* OutputStream, which is left in an indeterminate state, and it is up to
	* the caller to ignore or recover the stream state.
	*
	* @throws  InvalidClassException Something is wrong with a class used by
	*          serialization.
	* @throws  NotSerializableException Some object to be serialized does not
	*          implement the java.io.Serializable interface.
	* @throws  IOException Any exception thrown by the underlying
	*          OutputStream.
	*/
	@:overload @:public @:final public function writeObject(obj : Dynamic) : Void;
	
	/**
	* Method used by subclasses to override the default writeObject method.
	* This method is called by trusted subclasses of ObjectInputStream that
	* constructed ObjectInputStream using the protected no-arg constructor.
	* The subclass is expected to provide an override method with the modifier
	* "final".
	*
	* @param   obj object to be written to the underlying stream
	* @throws  IOException if there are I/O errors while writing to the
	*          underlying stream
	* @see #ObjectOutputStream()
	* @see #writeObject(Object)
	* @since 1.2
	*/
	@:require(java2) @:overload @:protected private function writeObjectOverride(obj : Dynamic) : Void;
	
	/**
	* Writes an "unshared" object to the ObjectOutputStream.  This method is
	* identical to writeObject, except that it always writes the given object
	* as a new, unique object in the stream (as opposed to a back-reference
	* pointing to a previously serialized instance).  Specifically:
	* <ul>
	*   <li>An object written via writeUnshared is always serialized in the
	*       same manner as a newly appearing object (an object that has not
	*       been written to the stream yet), regardless of whether or not the
	*       object has been written previously.
	*
	*   <li>If writeObject is used to write an object that has been previously
	*       written with writeUnshared, the previous writeUnshared operation
	*       is treated as if it were a write of a separate object.  In other
	*       words, ObjectOutputStream will never generate back-references to
	*       object data written by calls to writeUnshared.
	* </ul>
	* While writing an object via writeUnshared does not in itself guarantee a
	* unique reference to the object when it is deserialized, it allows a
	* single object to be defined multiple times in a stream, so that multiple
	* calls to readUnshared by the receiver will not conflict.  Note that the
	* rules described above only apply to the base-level object written with
	* writeUnshared, and not to any transitively referenced sub-objects in the
	* object graph to be serialized.
	*
	* <p>ObjectOutputStream subclasses which override this method can only be
	* constructed in security contexts possessing the
	* "enableSubclassImplementation" SerializablePermission; any attempt to
	* instantiate such a subclass without this permission will cause a
	* SecurityException to be thrown.
	*
	* @param   obj object to write to stream
	* @throws  NotSerializableException if an object in the graph to be
	*          serialized does not implement the Serializable interface
	* @throws  InvalidClassException if a problem exists with the class of an
	*          object to be serialized
	* @throws  IOException if an I/O error occurs during serialization
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function writeUnshared(obj : Dynamic) : Void;
	
	/**
	* Write the non-static and non-transient fields of the current class to
	* this stream.  This may only be called from the writeObject method of the
	* class being serialized. It will throw the NotActiveException if it is
	* called otherwise.
	*
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          <code>OutputStream</code>
	*/
	@:overload @:public public function defaultWriteObject() : Void;
	
	/**
	* Retrieve the object used to buffer persistent fields to be written to
	* the stream.  The fields will be written to the stream when writeFields
	* method is called.
	*
	* @return  an instance of the class Putfield that holds the serializable
	*          fields
	* @throws  IOException if I/O errors occur
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function putFields() : java.io.ObjectOutputStream.ObjectOutputStream_PutField;
	
	/**
	* Write the buffered fields to the stream.
	*
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	* @throws  NotActiveException Called when a classes writeObject method was
	*          not called to write the state of the object.
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function writeFields() : Void;
	
	/**
	* Reset will disregard the state of any objects already written to the
	* stream.  The state is reset to be the same as a new ObjectOutputStream.
	* The current point in the stream is marked as reset so the corresponding
	* ObjectInputStream will be reset at the same point.  Objects previously
	* written to the stream will not be refered to as already being in the
	* stream.  They will be written to the stream again.
	*
	* @throws  IOException if reset() is invoked while serializing an object.
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Subclasses may implement this method to allow class data to be stored in
	* the stream. By default this method does nothing.  The corresponding
	* method in ObjectInputStream is resolveClass.  This method is called
	* exactly once for each unique class in the stream.  The class name and
	* signature will have already been written to the stream.  This method may
	* make free use of the ObjectOutputStream to save any representation of
	* the class it deems suitable (for example, the bytes of the class file).
	* The resolveClass method in the corresponding subclass of
	* ObjectInputStream must read and use any data or objects written by
	* annotateClass.
	*
	* @param   cl the class to annotate custom data for
	* @throws  IOException Any exception thrown by the underlying
	*          OutputStream.
	*/
	@:overload @:protected private function annotateClass(cl : Class<Dynamic>) : Void;
	
	/**
	* Subclasses may implement this method to store custom data in the stream
	* along with descriptors for dynamic proxy classes.
	*
	* <p>This method is called exactly once for each unique proxy class
	* descriptor in the stream.  The default implementation of this method in
	* <code>ObjectOutputStream</code> does nothing.
	*
	* <p>The corresponding method in <code>ObjectInputStream</code> is
	* <code>resolveProxyClass</code>.  For a given subclass of
	* <code>ObjectOutputStream</code> that overrides this method, the
	* <code>resolveProxyClass</code> method in the corresponding subclass of
	* <code>ObjectInputStream</code> must read any data or objects written by
	* <code>annotateProxyClass</code>.
	*
	* @param   cl the proxy class to annotate custom data for
	* @throws  IOException any exception thrown by the underlying
	*          <code>OutputStream</code>
	* @see ObjectInputStream#resolveProxyClass(String[])
	* @since   1.3
	*/
	@:require(java3) @:overload @:protected private function annotateProxyClass(cl : Class<Dynamic>) : Void;
	
	/**
	* This method will allow trusted subclasses of ObjectOutputStream to
	* substitute one object for another during serialization. Replacing
	* objects is disabled until enableReplaceObject is called. The
	* enableReplaceObject method checks that the stream requesting to do
	* replacement can be trusted.  The first occurrence of each object written
	* into the serialization stream is passed to replaceObject.  Subsequent
	* references to the object are replaced by the object returned by the
	* original call to replaceObject.  To ensure that the private state of
	* objects is not unintentionally exposed, only trusted streams may use
	* replaceObject.
	*
	* <p>The ObjectOutputStream.writeObject method takes a parameter of type
	* Object (as opposed to type Serializable) to allow for cases where
	* non-serializable objects are replaced by serializable ones.
	*
	* <p>When a subclass is replacing objects it must insure that either a
	* complementary substitution must be made during deserialization or that
	* the substituted object is compatible with every field where the
	* reference will be stored.  Objects whose type is not a subclass of the
	* type of the field or array element abort the serialization by raising an
	* exception and the object is not be stored.
	*
	* <p>This method is called only once when each object is first
	* encountered.  All subsequent references to the object will be redirected
	* to the new object. This method should return the object to be
	* substituted or the original object.
	*
	* <p>Null can be returned as the object to be substituted, but may cause
	* NullReferenceException in classes that contain references to the
	* original object since they may be expecting an object instead of
	* null.
	*
	* @param   obj the object to be replaced
	* @return  the alternate object that replaced the specified one
	* @throws  IOException Any exception thrown by the underlying
	*          OutputStream.
	*/
	@:overload @:protected private function replaceObject(obj : Dynamic) : Dynamic;
	
	/**
	* Enable the stream to do replacement of objects in the stream.  When
	* enabled, the replaceObject method is called for every object being
	* serialized.
	*
	* <p>If <code>enable</code> is true, and there is a security manager
	* installed, this method first calls the security manager's
	* <code>checkPermission</code> method with a
	* <code>SerializablePermission("enableSubstitution")</code> permission to
	* ensure it's ok to enable the stream to do replacement of objects in the
	* stream.
	*
	* @param   enable boolean parameter to enable replacement of objects
	* @return  the previous setting before this method was invoked
	* @throws  SecurityException if a security manager exists and its
	*          <code>checkPermission</code> method denies enabling the stream
	*          to do replacement of objects in the stream.
	* @see SecurityManager#checkPermission
	* @see java.io.SerializablePermission
	*/
	@:overload @:protected private function enableReplaceObject(enable : Bool) : Bool;
	
	/**
	* The writeStreamHeader method is provided so subclasses can append or
	* prepend their own header to the stream.  It writes the magic number and
	* version to the stream.
	*
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:protected private function writeStreamHeader() : Void;
	
	/**
	* Write the specified class descriptor to the ObjectOutputStream.  Class
	* descriptors are used to identify the classes of objects written to the
	* stream.  Subclasses of ObjectOutputStream may override this method to
	* customize the way in which class descriptors are written to the
	* serialization stream.  The corresponding method in ObjectInputStream,
	* <code>readClassDescriptor</code>, should then be overridden to
	* reconstitute the class descriptor from its custom stream representation.
	* By default, this method writes class descriptors according to the format
	* defined in the Object Serialization specification.
	*
	* <p>Note that this method will only be called if the ObjectOutputStream
	* is not using the old serialization stream format (set by calling
	* ObjectOutputStream's <code>useProtocolVersion</code> method).  If this
	* serialization stream is using the old format
	* (<code>PROTOCOL_VERSION_1</code>), the class descriptor will be written
	* internally in a manner that cannot be overridden or customized.
	*
	* @param   desc class descriptor to write to the stream
	* @throws  IOException If an I/O error has occurred.
	* @see java.io.ObjectInputStream#readClassDescriptor()
	* @see #useProtocolVersion(int)
	* @see java.io.ObjectStreamConstants#PROTOCOL_VERSION_1
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function writeClassDescriptor(desc : java.io.ObjectStreamClass) : Void;
	
	/**
	* Writes a byte. This method will block until the byte is actually
	* written.
	*
	* @param   val the byte to be written to the stream
	* @throws  IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function write(val : Int) : Void;
	
	/**
	* Writes an array of bytes. This method will block until the bytes are
	* actually written.
	*
	* @param   buf the data to be written
	* @throws  IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function write(buf : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes a sub array of bytes.
	*
	* @param   buf the data to be written
	* @param   off the start offset in the data
	* @param   len the number of bytes that are written
	* @throws  IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function write(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Flushes the stream. This will write any buffered output bytes and flush
	* through to the underlying stream.
	*
	* @throws  IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function flush() : Void;
	
	/**
	* Drain any buffered data in ObjectOutputStream.  Similar to flush but
	* does not propagate the flush to the underlying stream.
	*
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:protected private function drain() : Void;
	
	/**
	* Closes the stream. This method must be called to release any resources
	* associated with the stream.
	*
	* @throws  IOException If an I/O error has occurred.
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Writes a boolean.
	*
	* @param   val the boolean to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeBoolean(val : Bool) : Void;
	
	/**
	* Writes an 8 bit byte.
	*
	* @param   val the byte value to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeByte(val : Int) : Void;
	
	/**
	* Writes a 16 bit short.
	*
	* @param   val the short value to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeShort(val : Int) : Void;
	
	/**
	* Writes a 16 bit char.
	*
	* @param   val the char value to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeChar(val : Int) : Void;
	
	/**
	* Writes a 32 bit int.
	*
	* @param   val the integer value to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeInt(val : Int) : Void;
	
	/**
	* Writes a 64 bit long.
	*
	* @param   val the long value to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeLong(val : haxe.Int64) : Void;
	
	/**
	* Writes a 32 bit float.
	*
	* @param   val the float value to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeFloat(val : Single) : Void;
	
	/**
	* Writes a 64 bit double.
	*
	* @param   val the double value to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeDouble(val : Float) : Void;
	
	/**
	* Writes a String as a sequence of bytes.
	*
	* @param   str the String of bytes to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeBytes(str : String) : Void;
	
	/**
	* Writes a String as a sequence of chars.
	*
	* @param   str the String of chars to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeChars(str : String) : Void;
	
	/**
	* Primitive data write of this String in
	* <a href="DataInput.html#modified-utf-8">modified UTF-8</a>
	* format.  Note that there is a
	* significant difference between writing a String into the stream as
	* primitive data or as an Object. A String instance written by writeObject
	* is written into the stream as a String initially. Future writeObject()
	* calls write references to the string into the stream.
	*
	* @param   str the String to be written
	* @throws  IOException if I/O errors occur while writing to the underlying
	*          stream
	*/
	@:overload @:public public function writeUTF(str : String) : Void;
	
	
}
/**
* An ObjectOutputStream writes primitive data types and graphs of Java objects
* to an OutputStream.  The objects can be read (reconstituted) using an
* ObjectInputStream.  Persistent storage of objects can be accomplished by
* using a file for the stream.  If the stream is a network socket stream, the
* objects can be reconstituted on another host or in another process.
*
* <p>Only objects that support the java.io.Serializable interface can be
* written to streams.  The class of each serializable object is encoded
* including the class name and signature of the class, the values of the
* object's fields and arrays, and the closure of any other objects referenced
* from the initial objects.
*
* <p>The method writeObject is used to write an object to the stream.  Any
* object, including Strings and arrays, is written with writeObject. Multiple
* objects or primitives can be written to the stream.  The objects must be
* read back from the corresponding ObjectInputstream with the same types and
* in the same order as they were written.
*
* <p>Primitive data types can also be written to the stream using the
* appropriate methods from DataOutput. Strings can also be written using the
* writeUTF method.
*
* <p>The default serialization mechanism for an object writes the class of the
* object, the class signature, and the values of all non-transient and
* non-static fields.  References to other objects (except in transient or
* static fields) cause those objects to be written also. Multiple references
* to a single object are encoded using a reference sharing mechanism so that
* graphs of objects can be restored to the same shape as when the original was
* written.
*
* <p>For example to write an object that can be read by the example in
* ObjectInputStream:
* <br>
* <pre>
*      FileOutputStream fos = new FileOutputStream("t.tmp");
*      ObjectOutputStream oos = new ObjectOutputStream(fos);
*
*      oos.writeInt(12345);
*      oos.writeObject("Today");
*      oos.writeObject(new Date());
*
*      oos.close();
* </pre>
*
* <p>Classes that require special handling during the serialization and
* deserialization process must implement special methods with these exact
* signatures:
* <br>
* <pre>
* private void readObject(java.io.ObjectInputStream stream)
*     throws IOException, ClassNotFoundException;
* private void writeObject(java.io.ObjectOutputStream stream)
*     throws IOException
* private void readObjectNoData()
*     throws ObjectStreamException;
* </pre>
*
* <p>The writeObject method is responsible for writing the state of the object
* for its particular class so that the corresponding readObject method can
* restore it.  The method does not need to concern itself with the state
* belonging to the object's superclasses or subclasses.  State is saved by
* writing the individual fields to the ObjectOutputStream using the
* writeObject method or by using the methods for primitive data types
* supported by DataOutput.
*
* <p>Serialization does not write out the fields of any object that does not
* implement the java.io.Serializable interface.  Subclasses of Objects that
* are not serializable can be serializable. In this case the non-serializable
* class must have a no-arg constructor to allow its fields to be initialized.
* In this case it is the responsibility of the subclass to save and restore
* the state of the non-serializable class. It is frequently the case that the
* fields of that class are accessible (public, package, or protected) or that
* there are get and set methods that can be used to restore the state.
*
* <p>Serialization of an object can be prevented by implementing writeObject
* and readObject methods that throw the NotSerializableException.  The
* exception will be caught by the ObjectOutputStream and abort the
* serialization process.
*
* <p>Implementing the Externalizable interface allows the object to assume
* complete control over the contents and format of the object's serialized
* form.  The methods of the Externalizable interface, writeExternal and
* readExternal, are called to save and restore the objects state.  When
* implemented by a class they can write and read their own state using all of
* the methods of ObjectOutput and ObjectInput.  It is the responsibility of
* the objects to handle any versioning that occurs.
*
* <p>Enum constants are serialized differently than ordinary serializable or
* externalizable objects.  The serialized form of an enum constant consists
* solely of its name; field values of the constant are not transmitted.  To
* serialize an enum constant, ObjectOutputStream writes the string returned by
* the constant's name method.  Like other serializable or externalizable
* objects, enum constants can function as the targets of back references
* appearing subsequently in the serialization stream.  The process by which
* enum constants are serialized cannot be customized; any class-specific
* writeObject and writeReplace methods defined by enum types are ignored
* during serialization.  Similarly, any serialPersistentFields or
* serialVersionUID field declarations are also ignored--all enum types have a
* fixed serialVersionUID of 0L.
*
* <p>Primitive data, excluding serializable fields and externalizable data, is
* written to the ObjectOutputStream in block-data records. A block data record
* is composed of a header and data. The block data header consists of a marker
* and the number of bytes to follow the header.  Consecutive primitive data
* writes are merged into one block-data record.  The blocking factor used for
* a block-data record will be 1024 bytes.  Each block-data record will be
* filled up to 1024 bytes, or be written whenever there is a termination of
* block-data mode.  Calls to the ObjectOutputStream methods writeObject,
* defaultWriteObject and writeFields initially terminate any existing
* block-data record.
*
* @author      Mike Warres
* @author      Roger Riggs
* @see java.io.DataOutput
* @see java.io.ObjectInputStream
* @see java.io.Serializable
* @see java.io.Externalizable
* @see <a href="../../../platform/serialization/spec/output.html">Object Serialization Specification, Section 2, Object Output Classes</a>
* @since       JDK1.1
*/
@:require(java1) @:native('java$io$ObjectOutputStream$Caches') @:internal extern class ObjectOutputStream_Caches
{
	
}
/**
* Provide programmatic access to the persistent fields to be written
* to ObjectOutput.
*
* @since 1.2
*/
@:require(java2) @:native('java$io$ObjectOutputStream$PutField') extern class ObjectOutputStream_PutField
{
	/**
	* Put the value of the named boolean field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not
	* <code>boolean</code>
	*/
	@:overload @:public @:abstract public function put(name : String, val : Bool) : Void;
	
	/**
	* Put the value of the named byte field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not
	* <code>byte</code>
	*/
	@:overload @:public @:abstract public function put(name : String, val : java.StdTypes.Int8) : Void;
	
	/**
	* Put the value of the named char field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not
	* <code>char</code>
	*/
	@:overload @:public @:abstract public function put(name : String, val : java.StdTypes.Char16) : Void;
	
	/**
	* Put the value of the named short field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not
	* <code>short</code>
	*/
	@:overload @:public @:abstract public function put(name : String, val : java.StdTypes.Int16) : Void;
	
	/**
	* Put the value of the named int field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not
	* <code>int</code>
	*/
	@:overload @:public @:abstract public function put(name : String, val : Int) : Void;
	
	/**
	* Put the value of the named long field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not
	* <code>long</code>
	*/
	@:overload @:public @:abstract public function put(name : String, val : haxe.Int64) : Void;
	
	/**
	* Put the value of the named float field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not
	* <code>float</code>
	*/
	@:overload @:public @:abstract public function put(name : String, val : Single) : Void;
	
	/**
	* Put the value of the named double field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not
	* <code>double</code>
	*/
	@:overload @:public @:abstract public function put(name : String, val : Float) : Void;
	
	/**
	* Put the value of the named Object field into the persistent field.
	*
	* @param  name the name of the serializable field
	* @param  val the value to assign to the field
	*         (which may be <code>null</code>)
	* @throws IllegalArgumentException if <code>name</code> does not
	* match the name of a serializable field for the class whose fields
	* are being written, or if the type of the named field is not a
	* reference type
	*/
	@:overload @:public @:abstract public function put(name : String, val : Dynamic) : Void;
	
	/**
	* Write the data and fields to the specified ObjectOutput stream,
	* which must be the same stream that produced this
	* <code>PutField</code> object.
	*
	* @param  out the stream to write the data and fields to
	* @throws IOException if I/O errors occur while writing to the
	*         underlying stream
	* @throws IllegalArgumentException if the specified stream is not
	*         the same stream that produced this <code>PutField</code>
	*         object
	* @deprecated This method does not write the values contained by this
	*         <code>PutField</code> object in a proper format, and may
	*         result in corruption of the serialization stream.  The
	*         correct way to write <code>PutField</code> data is by
	*         calling the {@link java.io.ObjectOutputStream#writeFields()}
	*         method.
	*/
	@:overload @:public @:abstract public function write(out : java.io.ObjectOutput) : Void;
	
	
}
/**
* Default PutField implementation.
*/
@:native('java$io$ObjectOutputStream$PutFieldImpl') @:internal extern class ObjectOutputStream_PutFieldImpl extends java.io.ObjectOutputStream.ObjectOutputStream_PutField
{
	@:overload @:public override public function put(name : String, val : Bool) : Void;
	
	@:overload @:public override public function put(name : String, val : java.StdTypes.Int8) : Void;
	
	@:overload @:public override public function put(name : String, val : java.StdTypes.Char16) : Void;
	
	@:overload @:public override public function put(name : String, val : java.StdTypes.Int16) : Void;
	
	@:overload @:public override public function put(name : String, val : Int) : Void;
	
	@:overload @:public override public function put(name : String, val : Single) : Void;
	
	@:overload @:public override public function put(name : String, val : haxe.Int64) : Void;
	
	@:overload @:public override public function put(name : String, val : Float) : Void;
	
	@:overload @:public override public function put(name : String, val : Dynamic) : Void;
	
	@:overload @:public override public function write(out : java.io.ObjectOutput) : Void;
	
	
}
/**
* Buffered output stream with two modes: in default mode, outputs data in
* same format as DataOutputStream; in "block data" mode, outputs data
* bracketed by block data markers (see object serialization specification
* for details).
*/
@:native('java$io$ObjectOutputStream$BlockDataOutputStream') @:internal extern class ObjectOutputStream_BlockDataOutputStream extends java.io.OutputStream implements java.io.DataOutput
{
	/*
	* The following methods are equivalent to their counterparts in
	* OutputStream, except that they partition written data into data
	* blocks when in block data mode.
	*/
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public override public function flush() : Void;
	
	@:overload @:public override public function close() : Void;
	
	/*
	* The following methods are equivalent to their counterparts in
	* DataOutputStream, except that they partition written data into data
	* blocks when in block data mode.
	*/
	@:overload @:public public function writeBoolean(v : Bool) : Void;
	
	@:overload @:public public function writeByte(v : Int) : Void;
	
	@:overload @:public public function writeChar(v : Int) : Void;
	
	@:overload @:public public function writeShort(v : Int) : Void;
	
	@:overload @:public public function writeInt(v : Int) : Void;
	
	@:overload @:public public function writeFloat(v : Single) : Void;
	
	@:overload @:public public function writeLong(v : haxe.Int64) : Void;
	
	@:overload @:public public function writeDouble(v : Float) : Void;
	
	@:overload @:public public function writeBytes(s : String) : Void;
	
	@:overload @:public public function writeChars(s : String) : Void;
	
	@:overload @:public public function writeUTF(s : String) : Void;
	
	
}
/**
* Lightweight identity hash table which maps objects to integer handles,
* assigned in ascending order.
*/
@:native('java$io$ObjectOutputStream$HandleTable') @:internal extern class ObjectOutputStream_HandleTable
{
	
}
/**
* Lightweight identity hash table which maps objects to replacement
* objects.
*/
@:native('java$io$ObjectOutputStream$ReplaceTable') @:internal extern class ObjectOutputStream_ReplaceTable
{
	
}
/**
* Stack to keep debug information about the state of the
* serialization process, for embedding in exception messages.
*/
@:native('java$io$ObjectOutputStream$DebugTraceInfoStack') @:internal extern class ObjectOutputStream_DebugTraceInfoStack
{
	/**
	* Returns a string representation of this object
	*/
	@:overload @:public public function toString() : String;
	
	
}
