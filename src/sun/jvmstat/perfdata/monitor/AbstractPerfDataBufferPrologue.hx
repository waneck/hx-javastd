package sun.jvmstat.perfdata.monitor;
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
extern class AbstractPerfDataBufferPrologue
{
	/**
	* Abstraction representing the HotSpot PerfData instrumentation buffer
	* header. This class represents only the fixed portion of the header.
	* Version specific classes represent the portion of the header that
	* may change from release to release.
	* <p>
	* The PerfDataBufferProlog class supports parsing of the following
	* C structure:
	* <pre>
	* typedef struct {
	*   jint magic;             // magic number - 0xcafec0c0
	*   jbyte byte_order;       // byte order of the buffer
	*   jbyte major_version;    // major and minor version numbers
	*   jbyte minor_version;
	*   jbyte reserved_byte1;   // reserved - see concrete implementations for
	*                           // possible definition.
	*   ...                     // remainder is handled by the subclasses.
	* } PerfDataPrologue
	* </pre>
	*
	* @author Brian Doherty
	* @since 1.5
	*/
	@:require(java5) private var byteBuffer : java.nio.ByteBuffer;
	
	public static var PERFDATA_MAJOR_NAME(default, null) : String;
	
	public static var PERFDATA_MINOR_NAME(default, null) : String;
	
	/**
	* Construct a PerfDataBufferPrologue instance.
	*
	* @param byteBuffer buffer containing the instrumentation data
	*/
	@:overload public function new(byteBuffer : java.nio.ByteBuffer) : Void;
	
	/**
	* Get the magic number.
	*
	* @return int - the magic number
	*/
	@:overload public function getMagic() : Int;
	
	/**
	* Get the byte order.
	*
	* @return int - the byte order of the instrumentation buffer
	*/
	@:overload public function getByteOrder() : java.nio.ByteOrder;
	
	/**
	* Get the major version.
	*
	* @return int - the major version
	*/
	@:overload public function getMajorVersion() : Int;
	
	/**
	* Get the minor version.
	*
	* @return int - the minor version
	*/
	@:overload public function getMinorVersion() : Int;
	
	/**
	* Get the accessible flag. If supported, it indicates that the shared
	* memory region is sufficiently initialized for client acccess.
	*
	* @return boolean - the initialized status
	* @see #supportsAccessible()
	*/
	@:overload @:abstract public function isAccessible() : Bool;
	
	/**
	* Test if the accessible flag is supported by this version of
	* the PerfDataBufferPrologue. Although not an abstract method, this
	* method should be overridden by version specific subclasses.
	*
	* @return boolean - the initialized flag support status.
	* @see #isAccessible()
	*/
	@:overload @:abstract public function supportsAccessible() : Bool;
	
	/**
	* Get the size of the header portion of the instrumentation buffer.
	*
	* @return int - the size of the header
	*/
	@:overload public function getSize() : Int;
	
	/**
	* Return an IntBuffer that accesses the major version number.
	* This is used to create a Monitor object for this value.
	*
	* @return IntBuffer - a ByteBuffer that accesses the major version number
	*                     in the instrumentation buffer header.
	*/
	@:overload public function majorVersionBuffer() : java.nio.IntBuffer;
	
	/**
	* Return an IntBuffer that accesses the minor version number.
	* This is used to create a Monitor object for this value.
	*
	* @return IntBuffer - a ByteBuffer that accesses the minor version number
	*                     in the instrumentation buffer header.
	*/
	@:overload public function minorVersionBuffer() : java.nio.IntBuffer;
	
	/**
	* Get the magic number from the given byteBuffer.
	*
	* @return int - the magic number
	*/
	@:native('getMagic') @:overload public static function _getMagic(bb : java.nio.ByteBuffer) : Int;
	
	/**
	* Get the major version number from the given ByteBuffer.
	*
	* @return int - the major version
	*/
	@:native('getMajorVersion') @:overload public static function _getMajorVersion(bb : java.nio.ByteBuffer) : Int;
	
	/**
	* Get the minor version number from the given ByteBuffer.
	*
	* @return int - the minor version
	*/
	@:native('getMinorVersion') @:overload public static function _getMinorVersion(bb : java.nio.ByteBuffer) : Int;
	
	/**
	* Get the byte order for the given ByteBuffer.
	*
	* @return int - the byte order of the instrumentation buffer
	*/
	@:native('getByteOrder') @:overload public static function _getByteOrder(bb : java.nio.ByteBuffer) : java.nio.ByteOrder;
	
	
}
